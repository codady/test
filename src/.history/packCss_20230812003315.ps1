#创建文件数组，从ax.css开始
$files = @('.\css\ax.css')
$js = Get-Content '..\dist\js\ax.js' -Raw
echo $js.Contains(' ')
if ('$($js)'.IndexOf('ax.getDom') > -1) {
    $files += '.\css\a.css'
}
#清空ax.css文件内容
Clear-Content '..\dist\css\ax.css' -Force
#重新合并css文件
foreach($file in $files)
{
    ##依次读取内容并写入ax.css当中
    Get-Content $file | Out-File -Append -encoding utf8 '..\dist\css\ax.css'
}