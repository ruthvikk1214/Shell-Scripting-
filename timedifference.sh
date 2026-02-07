#!/bin/bash
Start_time=$(date +%s)
echo "The Start time in seconds is $Start_time"
sleep 10
End_time=$(date +%s)
echo "THe end time is $End_time"    
diff_time=$((End_time-Start_time))
echo "The time difference is $diff_time seconds"