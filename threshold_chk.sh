#!/bin/bash

export HOME=/root/mnt
SCRIPT_PATH=/root/mnt/wake_up_pc.sh
LOG_FILE="fan_start_msg.txt"

temp=`tail -n 1 room_temp.txt |cut -f 2 -d " " |cut -c 1-2 `
threshold=30

if [ $((temp)) -ge $((threshold)) ]; then

    # Air conditioner ON
    echo "[`date`] There are more than ${threshold} degrees.. Start fan.. Room temperature is about ${temp} degrees." >> $LOG_FILE
    bash $SCRIPT_PATH

else

    # Air conditioner OFF
    echo "[`date`] There are less than ${threshold} degrees.. Room temperature is about ${temp} degrees." >> $LOG_FILE

fi

