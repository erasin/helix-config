# Helix 自定义开发版

基于官方 Master 分支的定制版本，包含未合并的 PR 和自定义功能。

## 安装

```sh
# branch local-dev
git clone -b local-dev https://github.com/erasin/helix
cd helix
cargo install --path helix-term
```

发布版本下载: [Releases](https://github.com/erasin/helix/releases)

![截图](https://github.com/user-attachments/assets/e36abb31-bbc0-42ff-bcb9-d999b93ef493)

---

## 功能特性

### 已合并 PR

| PR | 描述 |
|---|---|
| [#14544](https://github.com/helix-editor/helix/pull/14544) | 文件监控 |
| [#12369](https://github.com/helix-editor/helix/pull/12369) | Icons v2 (需 Nerd Fonts) |
| [#13133](https://github.com/helix-editor/helix/pull/13133) | 行内 Git Blame |
| [#13206](https://github.com/helix-editor/helix/pull/13206) | 单词补全 |
| [#12275](https://github.com/helix-editor/helix/pull/12275) | 语法符号选择器 |
| [#5768](https://github.com/helix-editor/helix/pull/5768) | 文件目录树 |

### 自定义功能

| 功能 | 说明 |
|---|---|
| tree_explorer | 文件目录树，支持鼠标操作 |
| icons | 文件类型图标显示 |
| lang-config-open | 打开语言配置文件 |
| commandline | 隐藏命令行 |
| inline-blame | 行内 Git Blame |
| word-completion | 单词补全 |
| zen-mode | 写作专注模式 |

---

## 配置说明

### 文件结构

```
~/.config/helix/
├── config.toml      # 主配置文件
├── languages.toml   # 语言服务器配置
├── themes/          # 主题目录
├── snippets/        # 代码片段
├── actions/         # LSP Actions
├── scripts/         # 辅助脚本
└── runtime/         # 运行时文件
```

### 加载顺序

1. `~/.config/helix/` (全局配置)
2. `{PROJECT}/.helix/` (项目配置)

### 配置文件

- **config.toml**: 编辑器配置 (主题、快捷键、状态栏等)
- **languages.toml**: 语言服务器和语言特定配置

---

## 快捷键

### 基础操作

| 快捷键 | 功能 |
|---|---|
| `Space + w + c` | 重新加载配置 |
| `Space + w + r` | 重新加载文件 |
| `Space + .` | 当前目录文件选择 |
| `Space + x` | 关闭当前缓冲区 |
| `Space + n` | 函数签名帮助 |
| `\ + z` | 软换行切换 |
| `Z + Z` | 保存并退出 |

### 插入模式

| 快捷键 | 功能 |
|---|---|
| `Esc` | 退出到普通模式 |
| `i` | 进入插入模式 |
| `I` | 行首插入 |
| `a` | 后移并插入 |
| `A` | 行尾插入 |
| `o` | 下方新行 |
| `O` | 上方新行 |

### 外部工具

| 快捷键 | 功能 |
|---|---|
| `Space + o + s` | Scooter 全局搜索 |
| `Space + o + g` | LazyGit |
| `Space + o + e` | Yazi 文件浏览器 |

---

## 脚本说明

| 脚本 | 说明 |
|---|---|
| `ime-switch` | 输入法自动切换 |
| `yazi-picker.sh` | Yazi 文件选择器 |
| `lazygit-picker.sh` | LazyGit 集成 |
| `scooter-picker.sh` | Scooter 搜索集成 |
| `hx-open` | Tmux 中打开文件 |
| `hx-sh` | Tmux 执行命令 |

---

## 语言支持

### 支持的语言

- **编译型**: Rust, Go, C/C++, Dart
- **脚本型**: Python, Ruby, PHP, Lua
- **Web**: TypeScript, JavaScript, HTML, CSS, Vue, Svelte
- **数据**: JSON, YAML, TOML, XML
- **游戏**: GDScript, GDShader
- **其他**: Markdown, LaTeX, Typst

### 语言服务器

| 语言 | 服务器 |
|---|---|
| Rust | rust-analyzer |
| Go | gopls |
| Python | ruff-lsp, ty |
| TypeScript | typescript-language-server |
| PHP | intelephense |
| Lua | lua-language-server |
| Markdown | markdown-oxide |

---

## 终端支持

### 推荐终端

- **Linux/MacOS**: [Alacritty](https://github.com/alacritty/alacritty), [Kitty](https://github.com/kovidgoyal/kitty) 
- **Windows**: [Windows Terminal](https://github.com/microsoft/terminal)

### 真彩支持

```bash
export COLORTERM=truecolor
export TERM=xterm-256color
```

### Tmux 配置

```bash
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ',xterm-256color:Tc'
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'
```

---

## 主题

### 透明背景

如需透明背景，创建自定义主题:

```toml
# themes/onedark_local.toml
inherits = "onedark"
"ui.background" = {}  # 使用终端背景
```

---

## 文档

- [官方文档](https://docs.helix-editor.com/)
- [中文文档](https://zjp-cn.github.io/helix-book/title-page.html)
- [第三方文档](https://helix-editor.vercel.app/)
