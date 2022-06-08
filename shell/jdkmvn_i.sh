#!/bin/bash

jdk_dl_url=https://dl.ipcrystal.com/java/jdk-8u291-linux-x64.tar.gz
maven_dl_url=https://dl.ipcrystal.com/java/apache-maven-3.6.3-bin.zip
maven_setting_dl_url=https://dl.ipcrystal.com/settings/settings_ali.xml

yum install wget unzip -y

cd

echo "install jdk-8u291"
wget $jdk_dl_url

mv jdk-8u291-linux-x64.tar.gz /usr/local

tar zxvf jdk-8u291-linux-x64.tar.gz

rm -rf jdk
mv jdk1.8.0_291/ jdk

echo "install maven"
cd
wget $maven_dl_url

mv apache-maven-3.6.3-bin.zip /usr/local
unzip apache-maven-3.6.3-bin.zip

rm -rf maven
mv apache-maven-3.6.3/ maven

echo "export JAVA_HOME=/usr/local/jdk" >>/etc/profile
echo "export M2_HOME=/usr/local/maven" >>/etc/profile
echo "export PATH=\$PATH:\$JAVA_HOME/bin:\$JAVA_HOME/jre/bin:\$M2_HOME/bin" >>/etc/profile

echo "maven ali setting.xml"

mkdir -p /root/.m2

cd /root/.m2

wget $maven_setting_dl_url

if [ ! -f "settings.xml" ]; then
  mv settings_ali.xml setting.xml
else
  mv setting.xml setting.xml.bak
  mv settings_ali.xml setting.xml
fi

source /etc/profile
