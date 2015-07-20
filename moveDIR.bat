@ECHO OFF
SETLOCAL
SET "sourcedir=c:\sourcedir"
:: Set your source directory
SET "destdir=c:\destdir"
:: Set your destination directory
FOR /f "tokens=1-4delims=." %%a IN (
 'dir /b /a-d "%sourcedir%\.*.ext" '
 :: Change directory and extension to look for file
 ) DO (
  MD "%destdir%\%%a" 2>NUL
  :: 2>nul suppresses error messages saying dir exists
  :: Adding >nul on end of MOVE line will suppress 'file moved' message
  MOVE "%sourcedir%\%%a.%%b.%%c.%%d" "%destdir%\%%a\"
) 
GOTO :EOF