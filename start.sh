#!/bin/bash

/opt/zeppelin/bin/zeppelin-daemon.sh start
tail -f /opt/zeppelin/logs/zepp*.out