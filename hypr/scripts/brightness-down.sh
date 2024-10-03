#!/usr/bin/bash

CURRENT_BRIGHTNESS_LEVEL=$( brightnessctl -m | awk -F, '{print $4}' | tr -d % )
MIN_BRIGHTNESS_LEVEL=1

if [ $CURRENT_BRIGHTNESS_LEVEL -gt $MIN_BRIGHTNESS_LEVEL ] ; then
	brightnessctl s 1%-
fi
