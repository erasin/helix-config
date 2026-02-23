
# 获取当前工作目录
$currentDir = Get-Location

# 启动标签
# wt -w 0 nt  -d $currentDir --title "Scooter-Picker" powershell -Command "scooter"
# 
alacritty -T "scooter-picker" --working-directory $currentDir -e scooter 
