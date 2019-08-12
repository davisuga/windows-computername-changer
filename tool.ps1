$serialDirtyOut = (wmic bios get serialnumber) | Out-String   
$trash,$se = $serialDirtyOut.split(" ").Trim() 
$full = 'Q-{0}' -f "$se"
$full = $full.replace(' ','') 
Rename-Computer -NewName $full 