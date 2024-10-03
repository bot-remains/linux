# !/usr/bash

if [ $(pgrep -c hyprpaper) -ne 0 ] ; then
	hyprctl hyprpaper unload all
	killall hyprpaper
fi

TARGET="/home/fubar/Wallpapers/"
WALLPAPER=$( find $TARGET -type f -regex '.*\.\(jpg\|jpeg\|png\|webp\)' | shuf -n 1 )

echo "preload = $WALLPAPER" > /home/fubar/.config/hypr/hyprpaper.conf
echo "wallpaper = eDP-1, $WALLPAPER" >> /home/fubar/.config/hypr/hyprpaper.conf
echo "splash = true" >> /home/fubar/.config/hypr/hyprpaper.conf
echo "ipc = on" >> /home/fubar/.config/hypr/hyprpaper.conf
