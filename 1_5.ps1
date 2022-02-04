# 5.	Создать один скрипт объединив, 3и задачи:

# a.	Экспортировать в CSV список файлов в папке (найти на компьютере папку в которой есть документы)

$PathToImportState = '.\'
$PathToFolderWithFiles = 'D:\PS_PETRACHUK'


Get-ChildItem -Path $PathToFolderWithFiles -Force -Recurse | Export-Csv -Path "$($PathToImportState)files.csv" -Delimiter ';' -Encoding 'utf8'

# b.	Экспортировать в XML информацию о локальных дисках.
Get-PSDrive -PSProvider FileSystem | Export-Clixml -Path "$($PathToImportState)drive.xml"

# c.	Загрузить данные из полученного в п.5.а или п.5.b файла и вывести в виде списка разными цветами
$GetDrives = Import-Clixml -Path '.\drive.xml'

$color = [Enum]::GetValues([System.ConsoleColor])

foreach ($drive in $GetDrives) {
    Write-Host "Name: $($drive.name) `nDescription: $($drive.description) `nProvider: $($drive.Provider) `nRoot: $($drive.Root) `nExpression:  $($drive.CurrentLocation) `n" -ForegroundColor $($color | Get-Random)
}