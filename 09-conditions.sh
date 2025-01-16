#!/bin/bash

NUMBER=$1

# -gt = greater than, -lt = less than, -eq = equal to, -ge = greater than or equal to, -le = less than or equal to.
if [ $NUMBER -gt 100 ]
then
    echo "The number is greater than 100."
else
    echo "The number is less than or equal to 100."
fi
