@echo off
set MSI=%~1

if "%MSI%"=="" exit

powershell -Command "Start-Process msiexec -ArgumentList '/i \"%MSI%\"' -Verb RunAs"