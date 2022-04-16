#!/bin/bash

rm -rf /etc/log.io/

mkdir -p /etc/log.io/

mkdir -p /etc/log.io/input

sed -i '/LOGIO_SERVER_CONFIG_PATH/d' /etc/profile
sed -i '/LOGIO_FILE_INPUT_CONFIG_PATH/d' /etc/profile

echo "export LOGIO_SERVER_CONFIG_PATH=/etc/log.io/server.json" >> /etc/profile
echo "export LOGIO_FILE_INPUT_CONFIG_PATH=/etc/log.io/input/file.json" >> /etc/profile

source /etc/profile

cat >/etc/log.io/server.json <<_EOF_
{
  "messageServer": {
    "port": 6689,
    "host": "0.0.0.0"
  },
  "httpServer": {
    "port": 6688,
    "host": "0.0.0.0"
  },
  "debug": false,
  "basicAuth": {
    "realm": "abc123xyz",
    "users": {
      "admini": "public"
    }
  }
}
_EOF_

cat >/etc/log.io/input/file.json <<_EOF_
{
  "messageServer": {
    "host": "127.0.0.1",
    "port": 6689
  },
  "inputs": [
    {
      "source": "ipcrystal",
      "stream": "nginx",
      "config": {
        "path": "/root/docker-compose/nginx/log/*.log"
      }
    },
    {
      "source": "ipcrystal",
      "stream": "system-logs",
      "config": {
        "path": "/var/log/**/*.log",
        "watcherOptions": {
          "ignored": "*.txt",
          "depth": 99,
        }
      }
    }
  ]
}
_EOF_

# npm install -g pm2
# npm install -g log.io
# npm install -g log.io-file-input

# pm2 start log.io-server --name=log.io-server
# pm2 start log.io-file-input --name=log.io-file-input