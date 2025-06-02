使用 HELIX EDITOR
===

> <p style="font-size:16px;"> 已经迁移到 https://github.com/erasin/dotfiles </p>


> <https://erasin.wang/helix/>

使用自定义分支

- <https://github.com/erasin/helix/tree/local-dev>
- <https://gitee.com/erasin/helix/tree/local-dev>

```sh
git clone -b local-dev https://github.com/erasin/helix
cd helix
cargo install --path helix-term
```
- **local**
  - [#5768 tree_explorer](https://github.com/helix-editor/helix/pull/5768) 文件目录支持
    - 分支维护[tree_explore_local](https://github.com/erasin/helix/tree/tree_explore_local)
  - [my-tool](https://github.com/erasin/helix/tree/my-tool) 本地工具合并
    - [#6531 lang-config-open](https://github.com/erasin/helix/lang-config-open) lang-config-open
    - [#5199 tutor-zh ](https://github.com/erasin/helix/tree/tutor-zh) tutor zh_cn 中文文档
    - [#6468 zen mode like](https://github.com/erasin/helix/tree/zen-mode) [discussions](https://github.com/helix-editor/helix/discussions/6468)
    - [#11223 commandline ](https://github.com/helix-editor/helix/pull/11223) 隐藏 commandline
    - [statusline-word-count](https://github.com/erasin/helix/tree/statusline-word-count)
    - [#13666 Status elements Style support](https://github.com/helix-editor/helix/pull/13666)
  - 使用 hx-lsp <https://github.com/erasin/hx-lsp>

- **origin**
  - [#12369 icons v2](https://github.com/helix-editor/helix/pull/12369)
  - [#13206 Word completion](https://github.com/helix-editor/helix/pull/13206)
  - [#12275 Syntax symbol pickers](https://github.com/helix-editor/helix/pull/12275)
  - ~~[#12308 Color swatches](https://github.com/helix-editor/helix/pull/12308)~~ lsp document color support
  - ~~[#12214 incomplete_completion ](https://github.com/helix-editor/helix/pull/12214)  implement incomplete completion requests~~
  - ~~[#12036 fix: better display of prompts on long inputs](https://github.com/helix-editor/helix/pull/12036)~~
  - ~~[inline-diagnostics #6417](https://github.com/helix-editor/helix/pull/6417) 内联 Diagnostics~~ Merged in 24.07  🎉
  - ~~[snippet_placeholder #9801](https://github.com/helix-editor/helix/pull/9801) code snippet smart tab~~ Merged

- **trash**
  - [#2869](https://github.com/helix-editor/helix/pull/2869) --icons 支持--

建议使用 kitty/Alacritty/wezterm + Tmux + Helix

## 文档

- 官方文档 <https://docs.helix-editor.com/>
- 配置文档中文 <https://zjp-cn.github.io/helix-book/title-page.html>

## highlight

配置 `languages.toml`

```toml
[use-grammars]
only = [
  "rust", "toml", # ...
  "markdown", "markdown-inline"
]
```

> 注意有些语言有嵌入语法。

使用 `hx -g fetch && hx -g build` 更新 `runtime/grammars`。


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


### ignore

文件过滤器

- `~/.config/helix/ignore`
- `PROJECT_PATH/.ignore`
- `PROJECT_PATH/.helix/ignore`


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

## AI 

在 Steel 插件未落地之前使用 lsp 作为AI补充

- <https://github.com/SilasMarvin/lsp-ai> 支持本地模型等等
- <https://github.com/rosarp/llm-lsp/> 支持 Codeium.ai
- <https://github.com/leona/helix-gpt> 支持 gpt

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

## Language

### markdown 输入

为项目创建 `.helix/config.toml` 和 `.helix/languages.toml`

`.helix/config.toml` 处理回车换行的时候保持垂直居中

```toml
[keys.insert]
# Return/Enter
"ret" = ["insert_newline", 'align_view_center']
```

`.helix/languages.toml` 使用 markdown 保持宽度并水平居中

```toml

[[language]]
name = "markdown"
text-width = 80
soft-wrap = { enable = true, wrap-at-text-width = true }

```

## leptos view

使用 `rstml`
