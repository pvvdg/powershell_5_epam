# 3.	Используя скрипт (.ps1 файл) Вывести список из 10 процессов занимающих дольше всего процессор. Результат записывать в файл

Param (
    [Parameter(Mandatory)]
    [string]$Path
)

Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 | Out-File $Path
