# 4.	�ᯮ���� �ਯ� �� �㭪� 3. �࣠�������� ����� �ਯ� ����� 10 �����

$Action = New-ScheduledTaskAction `
    -Execute 'powershell.exe' `
    -Argument '-File G:\PowerShell\Day5\powershell_5_epam\1_3.ps1'
$Time = New-TimeSpan -Minutes 10
$Trigger = New-ScheduledTaskTrigger -Once -At $((Get-Date).AddSeconds(5)) `
    -RepetitionInterval $Time
$Name = 'Task 1.3'
$Description = 'CPU'

Register-ScheduledTask -TaskName $Name `
    -Description $Description `
    -Action $Action `
    -Trigger $Trigger

