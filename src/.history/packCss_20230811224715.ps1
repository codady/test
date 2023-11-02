<#
从使用rollup合并的入口文件ax.js分析出已经使用了的插件模块
从css文件夹中找到对应的css文件进行合并为ax.css
并将ax.css文件复制到dist目录中的css目录里
#>
$files = Get-ChildItem '.\css' -Recurse -Include *.css
copy-item $files '..\src\css'
#执行完毕自动退出powershell窗口
#Stop-Process -Id $PID;