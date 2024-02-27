#!/bin/bash

#receiver
receiver="right1magic@swu.ac.kr, dlwjddnjs081723@gmail.com, ajh29464@swu.ac.kr, babi815@swu.ac.kr"

#folder
server1folder="/home/save-server/save/server1"
server2folder="/home/save-server/save/server2"
server3folder="/home/save-server/save/server3"


#latest
latest_server1=$(ls -t "$server1folder" | head -n1)
latest_server2=$(ls -t "$server2folder" | head -n1)
latest_server3=$(ls -t "$server3folder" | head -n1)

#subjects
subject="logfile"

#content
content="this is logfile."

#send
echo "$content" | mutt -s "$subject" -a "$server1folder/$latest_server1" -- "$receiver"
echo "$content" | mutt -s "$subject" -a "$server2folder/$latest_server2" -- "$receiver"
echo "$content" | mutt -s "$subject" -a "$server3folder/$latest_server3" -- "$receiver"
