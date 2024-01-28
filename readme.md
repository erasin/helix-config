使用 HELIX EDITOR
===

> https://erasin.wang/helix/
> 分支 local-dev2 <https://github.com/erasin/helix/tree/local-dev2>

- [#5768](https://github.com/helix-editor/helix/pull/5768) explorer 支持
- [#2869](https://github.com/helix-editor/helix/pull/2869) icons 支持
- [#5199](https://github.com/helix-editor/helix/pull/5199) 中文教程 tutor zh_cn


建议使用 Alacritty/wezterm + Tmux + Helix

## 配置

配置环境变量 `HELIX_RUNTIME` 配置 helix 默认的 runtime 文件夹路径。

runtime 加载配置顺序为：

- ~/.config/helix/runtime
- HELIX_RUNTIME


`$XDG_CONFIG_HOME` 一般为 `~/.config/helix`, 

- config.toml 是 helix 的配置文件
- languages.toml 是本地语言优先配置
- shells 中是针对 hx 的一些脚本

## tmux 

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

## shells

- hx-open 在 tmux 中打开调用
- hx-sh 利用 tmux 执行命令
- ibus-en 使用 gnome-shell dbus 切换输入法
