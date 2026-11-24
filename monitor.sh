#!/usr/bin/env bash
process=$1
logfile="/var/log/process_log.log"

if [ -z "$process" ]
   then
     echo "Enter porcess name "
     exit 1
fi

if pgrep "$process"  > /dev/null; then
  echo "Process $process is working"
else
  echo "$(date): Process $process down"  >> "$logfile"
fi

