d=$(dirname $f);
cd $d;
f=$(basename $f);
/usr/local/bin/tmux new-window ; /usr/local/bin/tmux send "hx $f" ENTER

# nohup /Applications/Alacritty.app/Contents/MacOS/alacritty --config-file ${HOME}/.config/alacritty/hx.yml --working-directory "$d" -e ~/.cargo/bin/hx "$f" > /dev/null >&1 &; 
