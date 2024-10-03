#!/usr/bin/bash

CURRENT_BRIGHTNESS_LEVEL=$( brightnessctl -m | awk -F, '{print $4}' | tr -d % )
MAX_BRIGHTNESS_LEVEL=100

if [ $CURRENT_BRIGHTNESS_LEVEL -le $MAX_BRIGHTNESS_LEVEL ] ; then 
	brightnessctl s +1%
fi
