@echo off
set fach=DB2
set ref=1456968
set dl_path=C:\th\

net use R: https://ilias.th-koeln.de/webdav.php/ILIAS_FH_Koeln/ref_%ref%/ p4ssw0rd /user:campusId
xcopy R:\ %dl_path%\%fach% /e /y /i /d
net use R: /DELETE