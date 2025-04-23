#!/bin/bash

# 参数：
# -v : 竖直拆分 (可选)
# -p : 项目路径
# 命令: 要执行的命令

# 检查是否在tmux会话中
# if [ -z "$TMUX" ]; then
#   echo "Error: This script must be run within a tmux session." >&2
#   exit 1
# fi

vertical=false
project_path=""
command=""

# 解析参数
while getopts "vp:" opt; do
  case $opt in
    v) vertical=true ;;
    p) project_path="$OPTARG" ;;
    *) echo "Usage: $0 [-v] -p project_path command" >&2
       exit 1 ;;
  esac
done
shift $((OPTIND - 1))

[ $# -eq 0 ] && { echo "Error: Command is required." >&2; exit 1; }
command="$*"

# 检查项目路径是否存在
if [ ! -d "$project_path" ]; then
  echo "Error: Project path '$project_path' does not exist." >&2
  exit 1
fi

# 转换为绝对路径
project_path=$(realpath "$project_path")

# 查找匹配的pane
target_pane=$(tmux list-panes -F "#{pane_id} #{pane_current_path}" 2>/dev/null | \
  while read pane_id path; do
    if [ "$(realpath "$path" 2>/dev/null)" = "$project_path" ]; then
      echo "$pane_id"
      break
    fi
  done)

if [ -n "$target_pane" ]; then
  # 向现有pane发送命令
  tmux send-keys -t "$target_pane" "$command" Enter
else
  # 确定拆分方向
  if $vertical; then
    direction="-v"
  else
    direction="-h"
  fi

  # 拆分窗口并发送命令
  new_pane=$(tmux split-window $direction -c "$project_path" -P -F "#{pane_id}")
  tmux send-keys -t "$new_pane" "$command" Enter
fi

