$wsh = New-Object -ComObject WScript.shell
$quit_time = '5:00:00pm'  # Modify quit_time for when you want the program to stop and logoff

while ($true) {
   $wsh.SendKeys('+{SCROLLLOCK}')
   $wsh.SendKeys('+{SCROLLLOCK}')
   $RNDSleep = Get-Random -minimum 1 -maximum 15
   Write-Output $RNDSleep
   Start-Sleep -seconds $RNDSleep
   if ((Get-Date) -gt (Get-Date -Date $quit_time)) {
      shutdown /l
      break
   }
}
