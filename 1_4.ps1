# 4.	�ᯮ���� �ਯ� �� �㭪� 3. �࣠�������� ����� �ਯ� ����� 10 �����

$user = "NT AUTHORITY\SYSTEM"
$time = New-TimeSpan -Minutes 10
$taskTrigger = New-ScheduledTaskTrigger -Once -At $((Get-Date).AddSeconds(3)) -RepetitionInterval $time
$pathToScript = "D:\Courses\powershell\Day5\Tasks\powershell_5_epam\1_3.ps1"
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument $pathToScript
$name = "����� �ਯ� �� ������� 1.3"
$description = "����� �ਯ� �뢮��饣� ᯨ᮪ �� 10 ����ᮢ."

Register-ScheduledTask -TaskName $name -Description $description -Trigger $taskTrigger -User $user -Action $action -RunLevel Highest ?Force



