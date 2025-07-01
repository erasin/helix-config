#!/usr/bin/env bash
#
# wayland
#
# niri 添加窗口规则，Alacritty | Kitty
#
# window-rule {
#     match app-id=r#"Alacritty$"# title="^scooter-picker(.*)"
#     open-floating true
# }
# 
# "s" = ":open %sh{ ~/.config/helix/scripts/scooter-picker }"

kitty -T "scooter-picker" --working-directory $(pwd) -e scooter 
