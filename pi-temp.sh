#!/bin/bash

# monitor with `watch <path/to/this/this_file>`

cpu=$(</sys/class/thermal/thermal_zone0/temp)
gpu=$(/opt/vc/bin/vcgencmd measure_temp)

echo "$(date) @ $(hostname)"
echo "============================"
echo "GPU => ${gpu#*=}"
echo "CPU => ${cpu:0:2}.${cpu:2:1}'C"
