!#/bin/bash

new_filename="server1_$(date +"%Y%m%d_%H:%M:%S")"

scp /home/send-server1/sandbox/log/resource.log save-server@172.27.0.2:/home/save-server/save/server1/${new_filename}.log

rm /home/send-server1/sandbox/log/resource.log

