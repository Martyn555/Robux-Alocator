Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "installer.cmd" & Chr(34), 1
Set WshShell = Nothing