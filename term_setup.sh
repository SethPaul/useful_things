#!/bin/bash

setup_dir="./"
if [ -z "$1" ]; then
    setup_dir=$ws
else
    setup_dir=$1
fi

echo "Setting up for wd: $setup_dir"
gnome-terminal --tab --working-directory $setup_dir 
xdotool windowsize $(xdotool getwindowfocus) 50% 100% && xdotool windowmove $(xdotool getwindowfocus) 0 0
gnome-terminal --window --working-directory $setup_dir --tab --active --working-directory $setup_dir -- bash -c "xdotool windowsize $(xdotool getwindowfocus) 50% 100% && xdotool windowmove $(xdotool getwindowfocus) 9999 0; exec bash"
