$wsh = New-Object -ComObject WScript.shell
$quit_time = '5:00:00pm'  # Modify quit_time for when you want the program to stop and logoff

while ($true) {
   $wsh.SendKeys('+{SCROLLLOCK}')
   $wsh.SendKeys('+{SCROLLLOCK}') # Keep the scroll-lock either off or on by entering it twice
   $RNDSleep = Get-Random -minimum 1 -maximum 15
   Write-Output $RNDSleep
   Start-Sleep -seconds $RNDSleep
   if ((Get-Date) -gt (Get-Date -Date $quit_time)) {
      shutdown /l  # caution: this will log off your current session!
      break
   }
}
