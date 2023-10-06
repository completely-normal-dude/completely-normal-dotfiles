#!/usr/bin/fish
# Script to restart PipeWire. I don't use this anymore
# Requires Zenity installed

if pidof -q pipewire 
    and zenity --question --text="PipeWire is already running.\nDo you want to restart it?" # Spawns a GTK dialog box
        killall pipewire 
        pipewire &
else
    echo "Run Pipewire &"
end
