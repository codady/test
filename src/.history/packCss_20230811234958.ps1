#获得css文件
$files = Get-ChildItem '.\css' -Recurse -Include *.css
#清空ax.css文件内容
Clear-Content C:\Temp\locations.txt -Force
#重新合并css文件
foreach($File in $files)
{
    ##将数据文件内容读取后输入到目标文件中
    Get-Content $File | Out-File -Append -encoding utf8 '..\dist\css\ax.css'
}