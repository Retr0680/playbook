@echo off

whoami /user | find /i "S-1-5-18" > nul 2>&1 || (
	call RunAsTI.cmd "%~f0" %*
	exit /b
)

bcdedit /set {current} safeboot minimal > nul
bcdedit /set {current} safebootalternateshell yes > nul

echo Finished, please reboot your device for changes to apply.
pause
exit /b