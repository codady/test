<#
Last modified: 2023-08-12 14:13:26

不需要安装其他插件便可运行.ps1文件，找到该文件，右键点击“使用powershell运行”即可
如果需要在vscode中使用，可安装“Run in Powershell（Toby Smith）”扩展，安装成功后对.ps1文件右键后选择“Run in Powershell Externally”即可运行
#>
#执行ax.js的rollup打包，build命令是可自定义的，请查看rollup.config.js
& npm run build
#步骤1：创建文件数组，从ax.css开始（包含了初始化样式和核心组件样式）
$files = @('.\css\ax.css')
#步骤2：读取已经压缩的ax.js文件并转为字符串（Get-Content获得是字符数组）
$js = Get-Content '..\dist\js\ax.js' -Raw
#步骤3：依次将css文件加入数组
if ($js.Contains('ax.getDom')) {
    $files += '.\css\a.css'
}
#步骤4：强制清空ax.css文件内容
Clear-Content '..\dist\css\ax.css' -Force
#步骤5：重新合并css文件
foreach($file in $files){
    #依次读取内容并以utf8格式写入ax.css当中
    Get-Content $file | Out-File -Append -encoding utf8 '..\dist\css\ax.css'
}
#步骤6：执行完毕自动退出powershell窗口
#Stop-Process -Id $PID;