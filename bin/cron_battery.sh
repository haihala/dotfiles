#!/bin/bash

battery_level=`acpi -b | head -n 1 | grep -P -o '[0-9]+(?=%)'`
if [ $battery_level -le 10 ]
then
	    notify-send "Battery low" "Battery level is ${battery_level}%!"
fi
