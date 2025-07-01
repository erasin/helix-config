#!/usr/bin/env bash
#
# wayland
#
# niri 添加窗口规则，Alacritty | Kitty
#
# window-rule {
#     match app-id=r#"Alacritty$"# title="^yazi-picker(.*)"
#     open-floating true
# }
# 
# "e" = ":open %sh{ ~/.config/helix/scripts/yazi-picker }"
# 
tmp="$(mktemp -t yazi-picker.XXXXXX)"
kitty -T "yazi-picker" --working-directory $(pwd) -e yazi --chooser-file "$tmp"
cat -- "$tmp"
rm -f -- "$tmp"
