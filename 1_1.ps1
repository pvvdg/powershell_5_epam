# 1.	Используя скрипт (.ps1 файл) Просмотреть содержимое ветви реeстра HKCU

Get-ChildItem -Path HKCU:\ | Select-Object Name