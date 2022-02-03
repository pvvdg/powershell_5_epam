# 2.	�ᯮ���� �ਯ� (.ps1 䠩�) � ��ࠬ��ࠬ�. ���࠭��� � ⥪�⮢� 䠩� �� ��᪥ ᯨ᮪ �� N ����饭���(!) �㦡. (������ 梥⮬ �뤥���� ��易⥫�� �室�� ��ࠬ���� �ਯ�)

Param (
    [Parameter(Mandatory)]
    [string]$file,
    [Parameter(Mandatory)]
    [string]$folder,
    [Parameter(Mandatory)]
    [int]$N
)

$Services = Get-Service | Where-Object { $_.Status -eq "Running" }

if ($N -gt $Services.Count) {
    Write-Host "All running services $($Services.Count). Enter number less then $N." -ForegroundColor Blue
}
else {
    $Services[0..$($N - 1)] | Out-File "$($folder + '\' + $file + '.txt')"
    Write-Host "Export seccess." -ForegroundColor Green
}