#!/bin/bash 

case "$1" in 

  start|START)  # ? if parameter 1 is "start" then:
    /usr/sbin/sshd
    ;;
  stop|STOP)  # ? if parameter 1 is "stop" then:
    kill $(cat /var/run/sshd.pid)
    ;;
  *)  # ? if parameter 1 is "any other and start or stop" then:
    echo "Usage: $0 start|stop"; exit 1
    ;;
esac
