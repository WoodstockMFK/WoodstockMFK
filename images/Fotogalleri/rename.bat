@echo off
setlocal enabledelayedexpansion

set count=1

for %%F in (*.jpg) do (
    ren "%%F" "foto!count!.jpg"
    set /a count+=1
)

echo Færdig.
pause