使用 HELIX EDITOR
===

> https://erasin.wang/helix/
> 分支 local-dev <https://gitee.com/erasin/helix>

- [#5768](https://github.com/helix-editor/helix/pull/5768) explorer 支持
- [#2869](https://github.com/helix-editor/helix/pull/2869) icons 支持
- [#5199](https://github.com/helix-editor/helix/pull/5199) 中文教程 tutor zh_cn


建议使用 Alacritty + Tmux + Helix

设定终端

```bash
export TERM=xterm-256color 
```

使用 tmux 的时候,追加tmux配置 

```bash
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ',xterm-256color:Tc'
```
