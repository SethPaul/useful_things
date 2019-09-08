#!/bin/bash

setup_dir="./"
if [ -z "$setup_dir" ]; then
    setup_dir=$setup_dir
else
    setup_dir=$ws
fi

echo "Setting up for wd: $setup_dir"
gnome-terminal --tab --working-directory $setup_dir 
xdotool windowsize $(xdotool getwindowfocus) 50% 100% && xdotool windowmove $(xdotool getwindowfocus) 0 0
gnome-terminal --window --working-directory $setup_dir --tab --working-directory $setup_dir 
xdotool windowsize $(xdotool getwindowfocus) 50% 100% && xdotool windowmove $(xdotool getwindowfocus) 9999 0
