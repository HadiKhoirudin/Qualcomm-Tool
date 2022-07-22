@echo off
@setlocal enabledelayedexpansion

:: The Function was created and enhanced by Psi505
:: You don't have the right to modify it...

::---- Abbreviations meaning ----::
:: XBPB = X Button Positin Begin
:: YBPB = Y Button Positin Begin
:: XBPM = X Button Position Middle
:: YBPM = Y Button Position Middle
:: XBPE = X Button Positin End
:: YBPE = Y Button Positin End
:: HL   = Horizontal line
:: Lng[B] = Button Length
::
::------------ Help ------------::
:: [%1 = X coordinate]
:: [%2 = Y coordinate]
:: [%3 = Text of the Button]
:: [%4 = '#' : The end of arguments]
:: [%5 = 'Press' : Varible to use with Getinput.exe]
::
::------------------------------::
:: Exemple : Call Button [X1] [Y1] "Button 1" [X2] [Y2] "Button 2" [X3] [Y3] "Button 3" # Press
::------------------------------::


::------------- Begin Program -------------::
:SLoop
    if "%1"=="" (exit)
    if "%1"=="#" (%~dp2DATA\BIN\batbox.exe !Buttons! & endlocal & set "%~2=%Button_Dim%" & exit /b)
    set XBPB=%1
    set YBPB=%2
    set "Text_Button=%~3"

    :: Calculate the button length 'X2'
    call :Length "%Text_Button%" Lng[B]

    :: Calculate x & y positions
    set /a XBPE= XBPB + Lng[B] + 3 
    set /a YBPE= YBPB + 2
    set /a XBPM= XBPB + 1
    set /a YBPM= YBPB + 1
    set /a _Lng[B]= Lng[B] + 2
    :: Make the hor line
    set "HL=" & for /l %%i in (1,1,!_Lng[B]!) do (set HL=!HL! /a 196 )

    :: Calculate the button dim
    set /a XBB= XBPB + 1
    set /a YBB= YBPB + 1
    set /a XBE= XBPE - 1
    set /a YBE= YBPE - 1
    set Button_Dim=%Button_Dim% %XBB% %YBB% %XBE% %YBE%

    :: Make the button
    set Top_Left=/g %XBPB% %YBPB% /a 218
    set Top_Rihgt=/g %XBPE% %YBPB% /a 191
    set Base_Left=/g %XBPB% %YBPE% /a 192
    set Base_Right=/g %XBPE% %YBPE% /a 217
    set Hor_Line=/g %XBPM% %YBPB% !HL! /g %XBPM% %YBPE%  !HL!
    set Ver_Line=/g %XBPB% %YBPM% /a 179 /g %XBPE% %YBPM% /a 179
    set Text_Po=/g %XBPM% %YBPM% /d " %Text_Button% "

    :: Make all the buttons
    set Buttons=!Buttons! %Top_Left% %Top_Rihgt% %Base_Left% %Base_Right% %Hor_Line% %Ver_Line% %Text_Po%

    :: Get the next items
    for /l %%i in (1,1,3) do (shift /1)
goto SLoop
::------------- End Program -------------::

::------------- Begin Funcs -------------::
:Length
    set str=%~1
    set cn=-1
    :_Lp
    set /a cn+=1
    if "!str:~%cn%,1!" neq "" (goto _Lp)
    endlocal & set %2=!cn!
exit /b
::------------- End Funcs -------------::
