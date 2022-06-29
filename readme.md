

# 使用 helix editor

## 概念简介

## term 检查与准备


 使用 [infocmp][infocmp] | rg color 检查是否支持 256color 

 使用 tmux 的时候,追加配置 

 set -g default-terminal "tmux-256color"
 set -ga terminal-overrides ',xterm-256color:Tc'

 需要 export TERM=xterm-256color 


## 简单配置


## 与 vim 区别与迁移 


# 自定义 helix 

## 文件结构和路径

### 支持项目级别自定配置

## 自定义 主题样式(theme)

## 自定义 语言(language)配置


[infocmp]: http://manual.51yip.com/shell/terminalccmds.html
