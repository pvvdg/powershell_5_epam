# 3.	�ᯮ���� �ਯ� (.ps1 䠩�) �뢥�� ᯨ᮪ �� 10 ����ᮢ ��������� ����� �ᥣ� ������. ������� �����뢠�� � 䠩�

Param (
    [Parameter(Mandatory)]
    [string]$Path
)

Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 | Out-File $Path
