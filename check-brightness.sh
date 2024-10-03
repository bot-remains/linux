# !/usr/bash

brightnessctl -m | awk -F, '{print $4}' | tr -d %
