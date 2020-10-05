SET GmailAccount=%~1
SET GmailPassword=%~2
SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& 'C:\Users\00004000\Desktop\email.ps1' '<Enter Email ID Here & remove angular braces>' '<Enter Password Here & remove angular braces>'"
