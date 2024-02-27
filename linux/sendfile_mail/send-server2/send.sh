!#/bin/bash

new_filename="server2_$(date +"%Y%m%d_%H:%M:%S")"

scp /home/send-server2/sandbox/log/resource.log save-server@172.27.0.2:/home/save-server/save/server2/${new_filename}.log

rm /home/send-server2/sandbox/log/resource.log
