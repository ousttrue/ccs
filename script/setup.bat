@echo off
%~d0
set here=%~p0
cd %here%
@echo on

cscript setup_msys.js
pause

