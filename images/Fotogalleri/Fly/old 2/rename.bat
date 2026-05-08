@echo off
setlocal enabledelayedexpansion

set tempcount=1

REM Omdøb først .jpeg til midlertidige .jpg-navne
for %%F in (*.jpeg) do (
    ren "%%F" "__jpegtmp__!tempcount!.jpg"
    set /a tempcount+=1
)

set count=1

REM Omdøb alle .jpg til midlertidige navne
for %%F in (*.jpg) do (
    ren "%%F" "__tmp__!count!.jpg"
    set /a count+=1
)

set count=1

REM Omdøb alle midlertidige filer til foto1.jpg, foto2.jpg osv.
for %%F in (__tmp__*.jpg) do (
    ren "%%F" "foto!count!.jpg"
    set /a count+=1
)

echo Done!
pause