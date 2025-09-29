#!/usr/bin/env bash

alacritty -T "lazygit-picker" --working-directory $(pwd) -e lazygit 
# kitty -o confirm_os_window_close=0 -T "lazygit-picker" --working-directory $(pwd) -e lazygit 
