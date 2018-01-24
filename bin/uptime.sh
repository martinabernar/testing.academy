#!/bin/bash

Min= 60
Hour= minute * 60
Day= hour * 24

HOUR=$(date +%H:%M:%S)
USER=$(who |wc -l)
UPLOGIN=$()
LOADAVG=$(cat /proc/loadavg)

echo " $HOUR $USER $LOADAVG $UPLOGIN"

time=$(%)
uptime=$(/proc/uptime)

# uptime from /proc/uptime

print "uptime is: " $UPTIME
