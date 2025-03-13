# PowerShell script to create a file and write "Hello" inside
$filepath = "C:\Users\Public\test_output.txt"
"Hello" | Out-File -FilePath $filepath -Encoding UTF8

# Display a confirmation message
Write-Host "Script executed! File created at: $filepath"
