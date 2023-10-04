#!/usr/bin/fish
# Script to take screenshots on Wayland
set window (slurp)
grim -g "$window"
