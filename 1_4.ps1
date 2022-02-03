# 4.	Используя скрипт из пункта 3. Организовать запуск скрипта каждые 10 минут

$user = "NT AUTHORITY\SYSTEM"
$time = New-TimeSpan -Minutes 10
$taskTrigger = New-ScheduledTaskTrigger -Once -At $((Get-Date).AddSeconds(3)) -RepetitionInterval $time
$pathToScript = "D:\Courses\powershell\Day5\Tasks\powershell_5_epam\1_3.ps1"
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument $pathToScript
$name = "Запуск скрипта из задания 1.3"
$description = "Запуск скрипта выводящего список из 10 процессов."

Register-ScheduledTask -TaskName $name -Description $description -Trigger $taskTrigger -User $user -Action $action -RunLevel Highest ?Force



