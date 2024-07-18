使用 HELIX EDITOR
===


> https://erasin.wang/helix/

使用分支
- <https://github.com/erasin/helix/tree/local-dev>
- <https://gitee.com/erasin/helix/tree/local-dev>

```sh
git clone -b local-dev https://github.com/erasin/helix
cd helix
cargo install --path helix-term
```

- [tree_explorer #5768](https://github.com/helix-editor/helix/pull/5768) 文件目录支持
  - 分支维护[tree_explore_local](https://gitee.com/erasin/helix/tree/tree_explore_local)
- ~~[inline-diagnostics #6417](https://github.com/helix-editor/helix/pull/6417) 内联 Diagnostics~~ Merged in 24.07  🎉
- [snippet_placeholder #9081](https://github.com/helix-editor/helix/pull/9801) code snippet smart tab
  - 使用 hx-lsp <https://github.com/erasin/hx-lsp>
- [lang-config-open #6531](https://github.com/erasin/helix/lang-config-open) lang-config-open
- [tutor-zh #5199](https://github.com/erasin/helix/tree/tutor-zh) tutor zh_cn 中文文档
- [zen mode like D#6468](https://github.com/helix-editor/helix/discussions/6468)

**未合并**

- [#2869](https://github.com/helix-editor/helix/pull/2869) --icons 支持--

建议使用 Alacritty/wezterm + Tmux + Helix

## highlight

- godot
  - gdscript
  - godot-resource
  - gdshader
- glicol
- fluent 
- rest http
- mail
- lua
- jsdoc

## 配置

`$XDG_CONFIG_HOME` 一般为 `~/.config/helix`, 

- `config.toml` 是 helix 的配置文件
- `languages.toml` 是本地语言优先配置
- `scripts`中是针对 hx 的一些脚本
- `snippets `适配 [hx-lsp](https://github.com/erasin/hx-lsp)
- `actions `适配 [hx-lsp](https://github.com/erasin/hx-lsp)

配置路径加载顺序

- ~/.config/helix/
- PROJECT_PATH/.helix/

因为我自己使用的自己编译的文件，需要设定置环境变量 `HELIX_RUNTIME` 为 helix 项目的 runtime 文件夹路径。

runtime 加载配置顺序为：

- ~/.config/helix/runtime
- HELIX_RUNTIME

### 背景透明

可以自定义透明背景，创建自定义主题,比如 `onedark_local.toml`

```toml
# 继承
inherits = "onedark"

# 自定义

# background 为空，使用 term 的背景，支持透明
"ui.background" = {}
```

## scripts

- hx-open 在 tmux 中打开调用
- hx-sh 利用 tmux 执行命令
- ime-switch 使用 gnome-shell dbus 切换输入法


## 输入法切换

切换输入法一般在切换插入模式时候处理。查看脚本[scripts/ime-switch](scripts/ime-switch)

需要配置

```toml
[keys.normal]
"esc" = ["normal_mode", ":pipe-to bash ~/.config/helix/scripts/ime-switch"]
i = ["insert_mode", ":pipe-to bash ~/.config/helix/scripts/ime-switch 1"]
I = ["insert_at_line_start", ":pipe-to bash ~/.config/helix/scripts/ime-switch 1"]
# use `li` or remap `after insert`
a = ["move_char_right", "insert_mode", ":pipe-to bash ~/.config/helix/scripts/ime-switch 1"]
A = ["insert_at_line_end", ":pipe-to bash ~/.config/helix/scripts/ime-switch 1"]
o = ["open_below", ":pipe-to bash ~/.config/helix/scripts/ime-switch 1"]
O = ["open_above", ":pipe-to bash ~/.config/helix/scripts/ime-switch 1"]

[keys.insert]
"esc" = ["normal_mode", ":pipe-to bash ~/.config/helix/scripts/ime-switch"]
```

### mac 下

参看 [macism](https://github.com/laishulu/macism)

### linux gnome 环境下 ibus 切换 

配置 config.toml 设置 esc 执行 脚本 切换英文
使用 `ibus engine xkb:us:eng` 在 wayland 下出现不一致问题
在 gnome 下需要插件[gnome shell ibus switcher](https://github.com/kevinhwang91/gnome-shell-ibus-switcher)


## tmux 

真彩支持
使用 `infocmp | rg color` 检查是否支持 256color [终端控制命令 infocmp](http://manual.51yip.com/shell/terminalccmds.html) 

设定终端

```bash
export TERM=xterm-256color 
```

使用 tmux 的时候,追加tmux配置 

```bash
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ',xterm-256color:Tc'
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```
