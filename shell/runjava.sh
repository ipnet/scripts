#!/bin/bash

JAVA_OPTS="-Xms256M -Xmx256M -Djava.awt.headless=true"

# export JAVA_HOME=/usr/local/jdk
# export CLASSPATH=$JAVA_HOME/lib:.
# export PATH=$PATH:$JAVA_HOME/bin

app_dir=/usr/local/app/
jarfile=HelloWorld.jar
process=HelloWorld
command=HelloWorld

cd $app_dir

runflag=false
if [ -f "$command.pid" ]; then
  pid=$(cat $command.pid)
  if [ "$pid" -gt 0 ]; then
    runflag=true
  fi
fi

case $1 in
start)
  if [ "$runflag" == true ]; then
    echo "$process is already running at pid: $pid"
  else
    java $JAVA_OPTS -jar $jarfile 1>/dev/null 2>&1 &
    echo "$process startup, pid: $!"
    echo $! >$command.pid
  fi
  ;;
stop)
  if [ "$runflag" == false ]; then
    echo "no $command.pid file can ben found,may not any $process running."
  else
    if [ $pid -ne 0 ]; then
      echo "kill running $process, pid: $pid"
      kill -9 $pid
      rm "$command.pid"
      echo "$process stopped."
    else
      echo "no $process run."
    fi
  fi
  ;;
status)
  if [ "$runflag" == false ]; then
    echo "no $command.pid file can ben found,may not any $process running."
  else
    if [ $pid -ne 0 ]; then
      echo "$process is running at pid: $pid"
    else
      echo "no $process run."
    fi
  fi
  ;;
*)
  echo "Please input like this: ./$command start or ./$command stop or ./command status"
  ;;
esac
