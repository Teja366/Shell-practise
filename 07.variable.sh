#!/bin/bash

#DATE=$(date)

Start_time=$(date +%s)

sleep 20 &

end_time=$(date +%s)

Total_time = $(($end_time - $Start_time))

echo "(Timestamp executed : $Total_time)"