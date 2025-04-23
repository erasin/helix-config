#!/usr/bin/env bash
#
# wayland
#
# niri 添加窗口规则
#
# window-rule {
#     match app-id=r#"Alacritty$"# title="^file-picker(.*)"
#     open-floating true
# }
# 
# 
tmp="$(mktemp -t yazi-picker.XXXXXX)"
alacritty -T "file-picker" --working-directory $(pwd) -e yazi --chooser-file "$tmp"
cat -- "$tmp"
rm -f -- "$tmp"
