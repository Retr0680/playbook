echo Installing Revision Tool...
Powershell -NonInteractive -NoLogo -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest ((Invoke-RestMethod -Uri \"https://api.github.com/repos/meetrevision/revision-tool/releases/latest\" -Method Get | ConvertTo-Json | ConvertFrom-Json).assets | where-object { $_.name -eq \"RevisionTool-Setup.exe\" }).browser_download_url -OutFile \"$env:TEMP\RevisionTool-Setup.exe\"}"
call "%temp%\RevisionTool-Setup.exe" /VERYSILENT /TASKS="desktopicon"
del "%temp%\RevisionTool-Setup.exe"