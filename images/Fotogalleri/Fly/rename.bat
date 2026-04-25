@echo off
setlocal enabledelayedexpansion

set count=1

for %%F in (*.jpg) do (
    ren "%%F" "__tmp__!count!.jpg"
    set /a count+=1
)

set count=1

for %%F in (__tmp__*.jpg) do (
    ren "%%F" "foto!count!.jpg"
    set /a count+=1
)

echo Done!
pause