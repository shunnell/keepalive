 $quit_time = '5:10:00pm'

 while ($true) {
   Start-Sleep -Seconds 120
   if ((Get-Date) -gt (Get-Date -Date $quit_time)) {
     break
   }
 }
 shutdown /l
 
