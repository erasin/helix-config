#!/usr/bin/env bash

# 获取当前工作目录
$currentDir = Get-Location

# 启动标签
# wt -w 0 nt  -d $currentDir --title "Lazygit-Picker" powershell -Command "lazygit"

alacritty -T "Lazygit-Picker" --working-directory $currentDir -e lazygit 
# wezterm
# wezterm cli spawn --new-window --cwd $currentDir -- lazygit
