@echo off
pushd %~dp0

set "_src=%~dp0build\bin"
set "_dest=%~dp0bin"

xcopy /y %_src% %_dest%

popd