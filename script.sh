#!/bin/bash

apt-get update && apt-get install net-tools && apt-get install netcat -y 
update-rc.d nc.sh defaults

