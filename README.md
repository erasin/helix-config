使用 HELIX EDITOR
===

## local-dev

<https://github.com/erasin/helix/releases> 自发布版本，不定期发布。

[github.com/erasin/helix](https://github.com/erasin/helix/) 默认分支为 `local-dev`, 该分支为自己发布的开发版本。配置可以参看 [github.com/erasin/helix-config](https://github.com/erasin/helix-config/).

基于官方 Master 分支，包含了一些没有合并的代码以及PR，在插件成熟之前，为了方便使用 helix ，自己定制 hx 使用。

**主要功能**

- 文件目录 tree_explorer
- 图标功能 icons
- 配置命令 lang-config-open, lang-config-open-workspace
- 隐藏命令行
- git blame
- 文本单词补全
- zen mode like

```sh
git clone -b local-dev https://github.com/erasin/helix
cd helix
cargo install --path helix-term
```

![helix dev 25 07 01](https://github.com/user-attachments/assets/e36abb31-bbc0-42ff-bcb9-d999b93ef493)

## PR 合并

- [#12369 Icons v2](https://github.com/helix-editor/helix/pull/12369)
  - 需要 [Nerd Fonts](https://www.nerdfonts.com/) 字体支持，linux用户可以参考 [erasin/dotfiles/fontconfig](https://github.com/erasin/dotfiles/tree/main/fontconfig)
- [#13133 Inline git blame](https://github.com/helix-editor/helix/pull/13133)
- 🎉 merged ~~[#13206 Word completion](https://github.com/helix-editor/helix/pull/13206)~~
- 🎉 merged ~~[#12275 Syntax symbol pickers](https://github.com/helix-editor/helix/pull/12275)~~
- [#5768  tree_explorer](https://github.com/helix-editor/helix/pull/5768) 文件目录支持
  - 分支维护 [tree_explorer_local](https://github.com/erasin/helix/tree/tree_explorer_local)


**观察中**
  - [#6118 sticky context](https://github.com/helix-editor/helix/pull/6118)

## 自定义功能

- statusline-theme [#13666](https://github.com/helix-editor/helix/pull/13666)
- commandline [#11223](https://github.com/helix-editor/helix/pull/11223)
- lang-config-open [#6531](https://github.com/helix-editor/helix/pull/6531)
- tutor-zh [#5199](https://github.com/helix-editor/helix/pull/5199)
- statusline-word-count
- zen-mode-like

**TODO**:

- [ ] i18n translate

### explorer

分支维护 [tree_explorer_local](https://github.com/erasin/helix/tree/tree_explorer_local)

基于 <helix-editor/helix#5768> 修改

- tree 渲染
- 鼠标支持
  - 点击
  - 滚动
- ICON V2 (local-dev 支持)
- 状态栏样式支持 [#13666](https://github.com/helix-editor/helix/pull/13666) 
  - `ui.statusline.explorer`
  - `ui.statusline.inactive.explorer`

```toml

# [#5768]
# space e 显示
[editor.explorer]
position = "left"
column-width = 22
```
theme 

```toml
inherits = "onedark"
"ui.statusline.explorer" = { fg = "blue", bg = "light-black", modifiers = ["bold"]}
```
> 其他样式包括 `ui.menu.selected`, `ui.text`, `ui.text.directory`

### commandline 隐藏

```toml
[editor]
commandline = false
```

### lang-config-open

提供命令

- `:lang-config-open`
- `:lang-config-open-workspace`

### tutor-zh

提供中文文档

- `:tutor zh-cn`

### statusline-word-count

为 `statusline` 提供 `word-count` 文本字数统计元素。

### zen-mode-like

在使用 markdown 增加写入体验

仅仅 markdown 使用 zen-mode 可以配置 `.helix/languages.toml`

```toml
[[language]]
name = "markdown"
text-width = 80
zen-mode = true
```

或者全部 zen-mode `.helix/config.toml` 处理回车换行的时候保持垂直居中

```toml
[editor]
zen-mode = true

[keys.insert]
# Return/Enter
"ret" = ["insert_newline", 'align_view_center']
```

## hx-lsp 作为补充功能

[hx-lsp](https://github.com/erasin/hx-lsp) 使用 LSP 协议，为编辑器提供了 snippets 和 action 功能，以及 markdown 部分功能。

## 终端

**Linux/MacOS** 建议使用 [kitty](https://github.com/kovidgoyal/kitty) / [Alacritty](https://github.com/alacritty/alacritty) .

**Windows** 建议使用 [windows terminal](https://github.com/microsoft/terminal) .

> 参考我的 powershell 和 window terminal 配置 [erasin/dotfiles/windows](https://github.com/erasin/dotfiles/tree/main/windows)


## 文档

- 官方文档 <https://docs.helix-editor.com/>
- 第三方文档 <https://helix-editor.vercel.app/>
- 配置文档中文 <https://zjp-cn.github.io/helix-book/title-page.html>

## 文本高亮 highlight

参考 [language.toml](https://github.com/helix-editor/helix/blob/master/languages.toml) 修改自己语言配置。

配置 `languages.toml`

```toml
[use-grammars]
only = [
  "rust", "toml", # ...
  "markdown", "markdown-inline"
]
```

> 注意有些语言有嵌入语法，如果没有加入配置，会导致部分内嵌语言失效。

使用 `hx -g fetch && hx -g build` 更新 `runtime/grammars`。

## 配置

`$XDG_CONFIG_HOME` 一般为 `~/.config/helix`, 

- `config.toml` 是 helix 的配置文件
- `languages.toml` 是本地语言优先配置
- `scripts`中是针对 hx 的一些脚本
- `snippets `适配 [hx-lsp](https://github.com/erasin/hx-lsp)
- `actions `适配 [hx-lsp](https://github.com/erasin/hx-lsp)

配置路径加载顺序

- `~/.config/helix/`
- `{PROJECT_PATH}/.helix/`

> 如果使用自己编译文件，使用项目本身的 `runtime`，需要设定置环境变量 `HELIX_RUNTIME` 为 helix 项目的 runtime 文件夹路径。

runtime 加载配置顺序为：

- `~/.config/helix/runtime`
- `{HELIX_RUNTIME}`

###  文件过滤器

helix 支持文件过滤配置 `ignore`，主要用于内置文件搜索过滤，规则配置和 `.gitignore` 相同。

一般配合 `.gitignore` 规则使用。

- `~/.config/helix/ignore`
- `{PROJECT_PATH}/.ignore`
- `{PROJECT_PATH}/.helix/ignore`

> 比如 `.gitignore` 过滤文件 `config.toml`, 在 `.helix/ignore` 中添加 `!config.toml`, 则在文件搜索时可以获取该文件。


## 背景透明

如果终端(比如 Alacritty)设定了窗口的透明，helix 需要修改主题适配处理。

比如：创建自定义主题 `onedark_local.toml`

```toml
# 继承
inherits = "onedark"

# 自定义
# background 为空，使用 term 的背景，支持透明
"ui.background" = {}
```

## 脚本 scripts

- ime-switch 为 Linux/MacOS 提供了切换输入法
- scooter-picker.sh/ps1 全局替换工具，需要 [scooter](https://github.com/thomasschafer/scooter)
- yazi-picker.sh/ps1 文件浏览器 需要 [yazi](https://github.com/sxyazi/yazi)
- hx-open 在 tmux 中打开调用
- hx-sh 利用 tmux 执行命令

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

**macos** 

参看 [macism](https://github.com/laishulu/macism)

**Linux ibus**

使用 `ibus engine xkb:us:eng` 在 wayland 下出现不一致问题.

在gnome下需要插件[gnome shell ibus switcher](https://github.com/kevinhwang91/gnome-shell-ibus-switcher)

> 如果路径不是 "/org/gnome/Shell/Extensions/IbusSwitcher" , 需要自己修改路径。

**Linux fcitx5**

使用 `fcitx5-remote -s $ime_method` 命令切换输入法 


**Windows**

- <https://github.com/erasin/win-ime-switch> windows 在命令行下切换输入法

```toml
"esc" = ["normal_mode", ":pipe-to win-ime-switch en"]
i = ["insert_mode", ":pipe-to win-ime-switch --toggle"]
# ....
  
[keys.insert]
"esc" = ["normal_mode", ":pipe-to win-ime-switch en"]
```

## AI 

在 Steel 插件未落地之前使用 lsp 作为AI补充, 不过体验都不太好

- <https://github.com/sigoden/aichat> terminal ai chat
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

