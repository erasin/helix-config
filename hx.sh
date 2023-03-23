d=$(dirname $f);
cd $d;
f=$(basename $f);
/usr/local/bin/tmux new-window ; /usr/local/bin/tmux send "hx $f" ENTER
open -a Alacritty
# nohup /Applications/Alacritty.app/Contents/MacOS/alacritty --config-file ${HOME}/.config/alacritty/hx.yml --working-directory "$d" -e ~/.cargo/bin/hx "$f" > /dev/null >&1 &; 

# macos 环境
# 1. 打开 automator （自动操作） app
# 2. 创建 `快速操作`
# 3. 右侧，工作流程收到当前 `file or director(文件或文件夹)` 位于 `Finder(访达).app`
# 4. 搜索 `shell` ， 追加 `运行脚本`
# 5. 追加执行代码 shell 选择 `/bin/bash` 或者 `/bin/zsh` , 传递输入选择 `作为自变量`
#
# for f in "$@"
# do 
#     source ${HOME}/.config/helix/hx.sh;
# 	exit;
# done
# 
# 保存命名为 使用 helix 编辑