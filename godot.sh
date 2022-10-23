#! /bin/bash 
# /path/.config/helix/godot.sh {project} {file}:{line}:{col}
#                                1         2
# /Users/erasin/.config/helix/godot.sh {project} {file}:{line}:{col}

d=$1;
f=$2;

/usr/local/bin/tmux send ":o $f" ENTER;
open -a Alacritty

# Try: tmux list-panes -t <your_pane_name> -F '#{pane_current_command}'
# https://man7.org/linux/man-pages/man1/tmux.1.html#FORMATS

