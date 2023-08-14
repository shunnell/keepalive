# CAUTION: This script will prevent your screen-saver, or power management from activating.
# Useful if you are transcribing from one computer to another and you get tired of moving the mouse to re-activate
#    (Sometimes it is near impossible to transfer from one computer to another...for example, when working in a
#    classified environment, and two or more networks are isolated from one another, and USBs are strictly prohibited)

$wsh = New-Object -ComObject WScript.shell
$quit_time = '5:00:00pm'  # Modify quit_time for when you want the program to stop and logoff

while ($true) {
   $wsh.SendKeys('+{SCROLLLOCK}')
   $wsh.SendKeys('+{SCROLLLOCK}') # Keep the scroll-lock either off or on by entering it twice
   $RNDSleep = Get-Random -minimum 1 -maximum 15
   Write-Output $RNDSleep
   Start-Sleep -seconds $RNDSleep
   if ((Get-Date) -gt (Get-Date -Date $quit_time)) {
      shutdown /l  # CAUTION: this will log off your current session!
      break
   }
}
