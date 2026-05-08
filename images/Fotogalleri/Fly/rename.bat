@echo off
setlocal enabledelayedexpansion

set count=1

rem Først omdøb alle jpg, jpeg og png til midlertidige .jpg-navne
for %%F in (*.jpg *.jpeg *.png) do (
    ren "%%F" "__tmp__!count!.jpg"
    set /a count+=1
)

set count=1

rem Omdøb derefter de midlertidige filer til foto1.jpg, foto2.jpg osv.
for %%F in (__tmp__*.jpg) do (
    ren "%%F" "foto!count!.jpg"
    set /a count+=1
)

echo Done!
pause