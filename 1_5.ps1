# 5.	������� ���� �ਯ� ��ꥤ����, 3� �����:

# a.	��ᯮ��஢��� � CSV ᯨ᮪ 䠩��� � ����� (���� �� �������� ����� � ���ன ���� ���㬥���)

$PathToImportState = '.\'
$PathToFolderWithFiles = 'D:\PS_PETRACHUK'


Get-ChildItem -Path $PathToFolderWithFiles -Force -Recurse | Export-Csv -Path "$($PathToImportState)files.csv" -Delimiter ';' -Encoding 'utf8'

# b.	��ᯮ��஢��� � XML ���ଠ�� � �������� ��᪠�.
Get-PSDrive -PSProvider FileSystem | Export-Clixml -Path "$($PathToImportState)drive.xml"

# c.	����㧨�� ����� �� ����祭���� � �.5.� ��� �.5.b 䠩�� � �뢥�� � ���� ᯨ᪠ ࠧ�묨 梥⠬�
$GetDrives = Import-Clixml -Path '.\drive.xml'

$color = [Enum]::GetValues([System.ConsoleColor])

foreach ($drive in $GetDrives) {
    Write-Host "Name: $($drive.name) `nDescription: $($drive.description) `nProvider: $($drive.Provider) `nRoot: $($drive.Root) `nExpression:  $($drive.CurrentLocation) `n" -ForegroundColor $($color | Get-Random)
}