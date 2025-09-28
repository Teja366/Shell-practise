#!/bin/bash

#DATE=$(date)

Start_time=$(date +%s)

sleep 20 &

END=$(date +%s)

Total_time= $(( $END - $Start_time ))

echo "(Timestamp executed : $Total_time)"