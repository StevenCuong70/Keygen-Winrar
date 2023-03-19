@echo off
@echo |Date
@echo |Time

chcp 65001
color 2f 
Title Xóa file rác cho Windows
del /f /s /q %windir%\prefetch\*.* rd /s /q %windir%\temp & md %windir%\temp
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
@RD /S /Q  "%userprofile%\AppData\Local\Temp"
echo.
echo Quá trình quét rác đã hoàn tất!

set /a time = 5
echo.
echo Chờ %time%(s) để thoát!
echo.
TimeOut %time%
Exit