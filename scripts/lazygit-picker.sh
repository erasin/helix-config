#!/usr/bin/env bash

# 检查是否在tmux会话中
if [[ -n "$TMUX" ]]; then
    # 使用tmux popup创建浮动窗口（需要tmux 3.2+）
    tmux popup -w 80% -h 75% -d "$(pwd)" -E "lazygit"
# 检查是否在zellij会话中
elif [[ -n "$ZELLIJ" ]]; then
    # 创建新浮动窗格并执行命令
    zellij run -c -f --cwd "$(pwd)" -- lazygit
elif [[ -n "$KITTY_PID" ]]; then
    # 创建新浮动窗格并执行命令
    kitty -o confirm_os_window_close=0 -T "lazygit-picker" --working-directory $(pwd) -e lazygit 
else
    # 在普通终端中使用alacritty创建新窗口
    alacritty -T "lazygit-picker" --working-directory $(pwd) -e lazygit 
fi
