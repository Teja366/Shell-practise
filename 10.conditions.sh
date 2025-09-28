#!/bin/bash

echo "Please enter number: "

read NUMBER

if [$(($NUMBER % 2)) -eq 0 ]; then
    echo "Give number is EVEN"
else
    echo "Give number is ODD"
fi