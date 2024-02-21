#!/bin/bash

#receiver
receiver="right1magic@swu.ac.kr, dlwjddnjs081723@gmail.com, ajh29464@swu.ac.kr, babi815@swu.ac.kr"

#log
logfile="/home/right/feb_project/log_file.log"

#subject
subject="logfile"

#content
content="this is logfile."

#send
echo "$content" | mutt -s "$subject" -a "$logfile" -- "$receiver"

