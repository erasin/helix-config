#!/usr/bin/env bash
#
# wayland
#
# niri 添加窗口规则，Alacritty 
#
# window-rule {
#     match app-id="Alacritty|kitty"# title="yazi-picker"
#     open-floating true
# }
#
# "e" = ":open %sh{ ~/.config/helix/scripts/yazi-picker }"

tmp="$(mktemp -t yazi-picker.XXXXXX)"

if [[ -n "$TMUX" ]]; then
    tmux display-popup -d "#{pane_current_path}" -w 80% -h 80% -E "yazi"
elif [[ -n "$ZELLIJ" ]]; then
    zellij run -c -f --cwd "$(pwd)" -- yazi --chooser-file "$tmp"
else
    alacritty -T "yazi-picker" --working-directory "$(pwd)" -e yazi --chooser-file "$tmp"
fi

cat -- "$tmp"
rm -f -- "$tmp"

