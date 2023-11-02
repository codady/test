#获得css文件
$files = Get-ChildItem '.\css' -Recurse -Include *.css
#清空ax.css文件内容
Clear-Content '..\dist\css\ax.css' -Force
#重新合并css文件
foreach($File in $files)
{
    ##依次读取内容并写入ax.css当中
    Get-Content $File | Out-File -Append -encoding utf8 '..\dist\css\ax.css'
}