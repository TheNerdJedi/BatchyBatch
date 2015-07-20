::Quite often when writing a batch file, you will come across a FOR loop. It might look something like this:
FOR /f "tokens=* delims= " %%a IN (MyFile) DO ECHO %%a

:: Explanation of tokens and delimiters

:: A File called MyFile contains 'Hello World! How are you doing today?'
:: We only want word 'World!' so we use below

FOR /f "tokens=2 delims= " %%a IN (MyFile.txt) DO ECHO %%a

:: Now we want the 'How are you doing today?'

FOR /f "tokens=3-7 delims=" %%a IN (MyFile.txt) DO ECHO %%a %%b %%c %%d %%e

:: If we wanted to we could've set all the variables and only ECHO %%a %%c %%e giving us 'How you today?'

:: Now we only want certain variables, such as 'Hello' 'How' 'doing'

FOR /f "tokens=1, 3, 6 delims=" %%a IN (MyFile.txt) DO ECHO %%a %%b %%c

:: We can set the whole line as well, my placing an '*'

FOR /f "tokens=* delims=" %%a IN (MyFile.txt) DO ECHO %%a

:: A delimiters can be for anything, lets say we have a text file with 'Hello World! /How are you today?/'
:: We can get only the part enclosed within the backslash with 

FOR /f "tokens=2 delims=/" %%a IN (MyFile) DO ECHO %%a

