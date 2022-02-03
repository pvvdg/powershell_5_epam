# 1.    Создать профиль

New-Item -Path $profile -Type File -Force

# 2.    В профиле изненить цвета в консоли PowerShell
# 3.    Создать несколько констант
Add-content -Path $profile -Value '(Get-Host).UI.RawUI.ForegroundColor = "green"',
'Set-Variable year -option Constant -value 25', 
'Set-Variable name -option Constant -value "Vlad"'

# 4.    Изменить текущую папку
Add-content -Path $profile -Value 'Set-Location -Path "C:\"'

# 5.    Вывести приветсвие
Add-content -Path $profile -Value '(Get-Host).UI.RawUI.WindowTitle = "Hello, Vlad"' ,
'Write-Host "Hi, Vlad!"'

Get-Content $profile
 

