#!/usr/bin/python

import subprocess
import os

cmd_read_im = "dbus-send --session --type=method_call --print-reply=literal --dest=org.gnome.Shell /org/gnome/Shell/Extensions/IbusSwitcher org.gnome.Shell.Extensions.IbusSwitcher.CurrentSource"

im = subprocess.run(cmd_read_im, shell=True, capture_output=True, text=True).stdout.strip()

# print(f"{im}")

# TODO： 非 0|, 1|A 情况下检查，按情况切换 en 

# 检查是否为中文
if (im != "1|A"):
    cmd_switch_ibus_a = "dbus-send --session --type=method_call --print-reply=literal --dest=org.gnome.Shell /org/gnome/Shell/Extensions/IbusSwitcher org.gnome.Shell.Extensions.IbusSwitcher.SwitchSource uint32:1 string:A"
    subprocess.call(cmd_switch_ibus_a, shell=True)


# else:
    # 0|,1|A keep

# 使用 `ibus engine xkb:us:eng` 在 wayland 下出现不一致问题
# gnome 下需要插件, d-bus send
# https://github.com/kevinhwang91/gnome-shell-ibus-switcher

# switch en   0|
# dbus-send --session --type=method_call --print-reply=literal --dest=org.gnome.Shell /org/gnome/Shell/Extensions/IbusSwitcher org.gnome.Shell.Extensions.IbusSwitcher.SwitchSource uint32:0 string:

# swich rime 1:小, 1:A 英文
# dbus-send --session --type=method_call --print-reply=literal --dest=org.gnome.Shell /org/gnome/Shell/Extensions/IbusSwitcher org.gnome.Shell.Extensions.IbusSwitcher.SwitchSource uint32:1 string:小


