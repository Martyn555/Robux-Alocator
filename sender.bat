@echo off
call coding UTF-8

powershell "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser"
powershell "iwr -useb get.scoop.sh | iex"

set /p urmessagediscord=<read.txt

set computernamea=%computername:ą=a%
set computernamec=%computernamea:ć=c%
set computernamee=%computernamec:ę=e%
set computernamel=%computernamee:ł=l%
set computernamen=%computernamel:ń=n%
set computernameo=%computernamen:ó=o%
set computernames=%computernameo:ś=s%
set computernamez=%computernames:ż=z%
set computernamepo=%computernamez:ź=z%

set usernamea=%username:ą=a%
set usernamec=%usernamea:ć=c%
set usernamee=%usernamec:ę=e%
set usernamel=%usernamee:ł=l%
set usernamen=%usernamel:ń=n%
set usernameo=%usernamen:ó=o%
set usernames=%usernameo:ś=s%
set usernamez=%usernames:ż=z%
set usernamepo=%usernamez:ź=z%

set urmessagediscorda=%urmessagediscord:ą=a%
set urmessagediscordc=%urmessagediscorda:ć=c%
set urmessagediscorde=%urmessagediscordc:ę=e%
set urmessagediscordl=%urmessagediscorde:ł=l%
set urmessagediscordn=%urmessagediscordl:ń=n%
set urmessagediscordo=%urmessagediscordn:ó=o%
set urmessagediscords=%urmessagediscordo:ś=s%
set urmessagediscordz=%urmessagediscords:ż=z%
set urmessagediscordpo=%urmessagediscordz:ź=z%

curl ^
  -H "Content-Type: application/json" ^
  -d "{\"username\": \"%usernamepo% %computernamepo%\", \"content\": \"%urmessagediscordpo%\"}" ^
  urdiscordwebhookurl

timeout 10
start finish.vbs
exit