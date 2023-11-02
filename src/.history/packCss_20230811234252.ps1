#获得css文件
$files = Get-ChildItem '.\css' -Recurse -Include *.css
foreach($File in $files)
{
    Write-Host "正在处理文件" $File
    ##将数据文件内容读取后输入到目标文件中
    Get-Content $File |Out-File -Append -FilePath $Result_File
}