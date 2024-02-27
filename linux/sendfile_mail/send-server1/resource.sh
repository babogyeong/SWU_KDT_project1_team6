#!/bin/bash

curtime=$(date +'%Y-%m-%d %H:%M:%S')
cpu=$(top -b -n1 | grep '%Cpu')
mem=$(top -b -n1 | grep 'MiB Mem')

echo "${curtime} "
echo "${cpu}"
echo "${mem}"
