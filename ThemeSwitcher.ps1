$Theme0 = "C:\Users\david.lewis\AppData\Local\Microsoft\Windows\Themes\RP.theme"
$Theme1 = "C:\Windows\resources\Themes\aero.theme"

Clear-Host
$RegistryKey = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\"
Cd HKCU:\$RegistryKey
$RegistryValue = (Get-ItemProperty -Path. -Name CurrentTheme).CurrentTheme

if ( $RegistryValue -eq $Theme0 ) {
    Invoke-Expression $Theme1 
}
elseif ( $RegistryValue -eq $Theme1 ) {
  Invoke-Expression $Theme0
}
else {
  Invoke-Expression $Theme0
}