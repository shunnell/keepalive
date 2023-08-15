# CAUTION: This script will prevent your screen-saver, or power management from activating.
# Useful if you are transcribing from one computer to another and you get tired of moving the mouse to re-activate
#    (Sometimes it is near impossible to transfer from one computer to another...for example, when working in a
#    classified environment, and two or more networks are isolated from one another, and USBs are strictly prohibited)

$wsh = New-Object -ComObject WScript.shell
$quit_time = '5:00:00pm'  # Modify quit_time for when you want the program to stop and logoff
$RNDSleep = 5 

while ($true) {
   $wsh.SendKeys('+{SCROLLLOCK}')
   $wsh.SendKeys('+{SCROLLLOCK}') # Keep the scroll-lock either off or on by entering it twice
   if ($RNDSleep % 5 -eq 0) {
      Write-Output "FAST LOOP INITIATED!"
      $counter = 1
      $COUNTERRandom = Get-Random -minimum 8 -maximum 12
      while ($counter -lt $COUNTERRandom) {
         $RNDSleep = Get-Random -minimum 627 -maximum 4091
         # Send the key twice to keep it either on or off
         $wsh.SendKeys('+{SCROLLLOCK}')
         $wsh.SendKeys('+{SCROLLLOCK}')
         Start-Sleep -Milliseconds $RNDSleep
         $counter += 1
         Write-Output $RNDSleep
      }
   }
   $RNDSleep = Get-Random -minimum 427 -maximum 13001
   Write-Output $RNDSleep
   Start-Sleep -milliseconds $RNDSleep
   if ((Get-Date) -gt (Get-Date -Date $quit_time)) {
      break
   }
}
Write-Output "Logging off now"

shutdown /l  # CAUTION: this will log off your current session!
