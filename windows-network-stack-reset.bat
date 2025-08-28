@echo off
ipconfig /release
ipconfig /flushdns
netsh winsock reset
netsh int ip reset
netsh advfirewall reset
ipconfig /renew
pause
