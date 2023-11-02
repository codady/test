#获得css文件
$files = Get-ChildItem '.\css' -Recurse -Include *.css
foreach($File in $files)
{
    ##将数据文件内容读取后输入到目标文件中
    Get-Content $File |Out-File -Append -encoding utf8 '..\dist\css\ax.css'
}