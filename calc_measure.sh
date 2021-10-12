#!/bin/bash

export HOME=/root/mnt

data=`tail -n 1 tempdata.csv |cut -f 7 -d  " " |cut -c 6-7`
temp=`echo $data`
calc_temp=`expr $temp - 11`

echo "推定室内温度 "$calc_temp"℃" "["`date`"]" >> room_temp.txt
