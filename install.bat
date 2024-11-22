@ECHO off
CLS
TITLE SYSTEM-WIDE UNIVERSAL ADB AND FASTBOOT BY ARPIT
COLOR 30
ECHO ###############################################################################
ECHO #                                                                             #
ECHO #             SYSTEM-WIDE UNIVERSAL ADB AND FASTBOOT INSTALLER                #
ECHO #                                                                             #
ECHO #                                VERSION 1.1                                  #
ECHO #                                                                             #
ECHO #                      BY ARPIT - t.me/arpiit_jaiswal                         #
ECHO #                                                                             #
ECHO #              ANDROID DEBUG BRIDGE VERSION 35.0.2 (July 2024)                #
ECHO #                  GOOGLE USB DRIVER VERSION (26 Dec 2023)                    #
ECHO #                                                                             #
ECHO ###############################################################################
:Q1
ECHO(
SET /P ANSWER=Do you want to install ADB and Fastboot? (Y/N)
 IF /i {%ANSWER%}=={y} (GOTO Q2)
 IF /i {%ANSWER%}=={yes} (GOTO Q2)
 IF /i {%ANSWER%}=={n} (GOTO DRV)
 IF /i {%ANSWER%}=={no} (GOTO DRV)
ECHO(
ECHO Bad answer! Use only Y/N or Yes/No
GOTO Q1
:Q2
ECHO(
SET /P ANSWER=Install ADB system-wide? (Y/N)
 IF /i {%ANSWER%}=={y} (GOTO ADB_S)
 IF /i {%ANSWER%}=={yes} (GOTO ADB_S)
 IF /i {%ANSWER%}=={n} (GOTO ADB_U)
 IF /i {%ANSWER%}=={no} (GOTO ADB_U)
ECHO(
ECHO Bad answer! Use only Y/N or Yes/No
GOTO Q2
:ADB_U
ECHO(
ECHO Installing ADB and Fastboot ... (current user only)
ECHO(
ADB kill-server > NUL 2>&1
SET /a COUNT=0
IF EXIST %WINDIR%\adb.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\AdbWinApi.dll DEL %WINDIR%\AdbWinApi.dll /f /q
IF EXIST %WINDIR%\AdbWinUsbApi.dll DEL %WINDIR%\AdbWinUsbApi.dll /f /q
IF EXIST %WINDIR%\fastboot.exe DEL %WINDIR%\fastboot.exe /f /q
IF EXIST %WINDIR%\etc1tool.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\hprof-conv.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\libwinpthread-1.dll DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\make_f2fs_casefold.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\make_f2fs.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\mke2fs.conf DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\mke2fs.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\NOTICE.txt DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\source.properties DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\sqlite3.exe DEL %WINDIR%\adb.exe /f /q
XCOPY adb\adb.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinApi.dll %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinUsbApi.dll %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\fastboot.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\etc1tool.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\hprof-conv.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\libwinpthread-1.dll %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs_casefold.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.conf %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\NOTICE.txt %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\source.properties %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\sqlite3.exe %USERPROFILE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
ECHO %COUNT% file(s) copied.
GOTO DRV
:ADB_S
ECHO(
ECHO Installing ADB and Fastboot ... (system-wide)
ECHO(
ADB kill-server > NUL 2>&1
SET /a COUNT=0
IF EXIST %WINDIR%\adb.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\AdbWinApi.dll DEL %WINDIR%\AdbWinApi.dll /f /q
IF EXIST %WINDIR%\AdbWinUsbApi.dll DEL %WINDIR%\AdbWinUsbApi.dll /f /q
IF EXIST %WINDIR%\fastboot.exe DEL %WINDIR%\fastboot.exe /f /q
IF EXIST %WINDIR%\etc1tool.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\hprof-conv.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\libwinpthread-1.dll DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\make_f2fs_casefold.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\make_f2fs.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\mke2fs.conf DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\mke2fs.exe DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\NOTICE.txt DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\source.properties DEL %WINDIR%\adb.exe /f /q
IF EXIST %WINDIR%\sqlite3.exe DEL %WINDIR%\adb.exe /f /q
XCOPY adb\adb.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinApi.dll %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\AdbWinUsbApi.dll %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\fastboot.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\etc1tool.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\hprof-conv.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\libwinpthread-1.dll %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs_casefold.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\make_f2fs.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.conf %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\mke2fs.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\NOTICE.txt %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\source.properties %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
XCOPY adb\sqlite3.exe %SYSTEMDRIVE%\adb\ /y /q && SET /a COUNT=%COUNT%+1
ECHO %COUNT% file(s) copied.
:DRV
ECHO(
SET /P ANSWER=Do you want to install device drivers? (Y/N)
 IF /i {%ANSWER%}=={y} (GOTO DRIVER)
 IF /i {%ANSWER%}=={yes} (GOTO DRIVER)
 IF /i {%ANSWER%}=={n} (GOTO FINISH)
 IF /i {%ANSWER%}=={no} (GOTO FINISH)
ECHO Bad answer! Use only Y/N or Yes/No
GOTO DRV
:DRIVER
IF DEFINED programfiles(x86) GOTO x64
:x86
ECHO(
ECHO Installing 32-bit driver ...
ECHO Please continue driver installation ...
PING localhost -n 1 >NUL
START /wait driver\DPInst_x86 /f
GOTO FINISH
:x64
ECHO(
ECHO Installing 64-bit driver ...
ECHO Please continue driver installation ...
PING localhost -n 1 >NUL
START /wait driver\DPInst_x64 /f
GOTO FINISH
:FINISH
ECHO(
ECHO All done!
ECHO(
PAUSE