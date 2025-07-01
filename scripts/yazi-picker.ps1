# 获取当前目录
$currentDir = Get-Location

# 创建临时文件用于存储yazi选择的文件路径
$tempFile = [System.IO.Path]::GetTempFileName()

# 通过Windows Terminal启动yazi并等待选择
wt -w 0 nt -d $currentDir --title "Yazi-Picker" powershell -Command "yazi --chooser-file '$tempFile'"

# 等待临时文件被创建/修改
while (-not (Test-Path $tempFile) -or (Get-Item $tempFile).Length -eq 0) {
    Start-Sleep -Milliseconds 100
}

# 读取选择的文件路径
$selectedFile = Get-Content $tempFile -Raw

# 清理临时文件
Remove-Item $tempFile

# 返回选择的文件路径
return $selectedFile.Trim()
