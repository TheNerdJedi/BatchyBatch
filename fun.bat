@echo off

:lolipop
echo.
echo Hello there, how are you?
set /p feeling=
if %feeling%== bad goto sad
if %feeling%== good goto lol
goto lolipop

:lol
echo.
echo good,now what is you're name?
set /p name=
echo That's a great name %name%!!! I love it!! 
echo, anyways, time to get serious %name%, what is your favorite team?
set /p team=

echo what is your fave internet browser?
set /p browser=
goto fun

:fun
echo.
echo you lied to me %name%, you don't love %team% or %browser%!!! now you will pay!!! 
goto shutdown

:shutdown
echo.
echo I will now proceed to delete all your computers critical files.
echo ready? 
set /p answer=
if %answer%==yes goto delete
if %answer%==no goto sad2

:sad
echo.
echo Sorry to hear that buddy. :'(
goto lol

:delete
color 0D
echo.
echo ok,chow!!!
echo {0A}%random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
goto random

:random
color 0A
echo.
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
goto werdy 

:sad2
echo.
echo too bad, you lied to me!!! TTYL!!!
echo i will talk to you soon right?
set /p what=
if %what%==yes goto delete
if %what%==no goto delete
goto delete

:werdy
color 2A
echo.
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%  %random%
goto random