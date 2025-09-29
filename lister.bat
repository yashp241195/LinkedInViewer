@echo off
REM Root directory (change if needed)
SET ROOT_DIR=.

REM Output file
SET OUTPUT_FILE=files_array.js

ECHO const filesArray = [ > %OUTPUT_FILE%

FOR /D %%D IN (%ROOT_DIR%\*) DO (
    ECHO   [ >> %OUTPUT_FILE%
    FOR %%F IN ("%%D\*.html") DO (
        ECHO     "%%F", >> %OUTPUT_FILE%
    )
    ECHO   ], >> %OUTPUT_FILE%
)

ECHO ]; >> %OUTPUT_FILE%
ECHO Generated %OUTPUT_FILE%
PAUSE

