Dim oShell 
Set oShell = WScript.CreateObject ("WSCript.shell")
oShell.run "export.bat", 0 
Set oShell = Nothing