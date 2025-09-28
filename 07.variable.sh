#!/bin/bash

#DATE=$(date)

Start_time=$(date -%s)

sleep 20 &

End_time=$(date -%s)

Total_time= $(($End_time - $Start_time))

echo "(Timestamp executed : $Total_time)"