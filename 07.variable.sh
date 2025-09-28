#!/bin/bash

#DATE=$(date)

START_TIME=$(date +%s)

sleep 20

END_TIME=$(date +%s)

Total_time=$(($END_TIME-$START_TIME))

echo "(Timestamp executed : $Total_time)"