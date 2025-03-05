#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
;==============================
; Alt key is !
; windows key is #
; shift key is +
; control key is ^
;==============================

;--------Volume_Up-----------
RShift & End:: 										 
Send {Volume_Up 5} 
return

;--------Volume_Down-----------
RShift & Up:: 											 
Send {Volume_Down 5}								 
return

;--------Reload------
;!r::reload

;--------MPV_Global------------
Alt & p::ControlSend, ,{space}, ahk_class mpv 
Alt & u::ControlSend, ,{left}, ahk_class mpv
Alt & i::ControlSend, ,{right}, ahk_class mpv

;--------Run_App---------------
Alt & c:: Run "C:\Users\shohan11d\AppData\Local\Programs\Microsoft VS Code\Code.exe"
Alt & y:: Run https://www.youtube.com/
;Alt & f:: Run https://www.facebook.com/
#W:: Run "C:\Program Files\Google\Chrome\Application\chrome.exe" 
#Enter:: Run pwsh.exe -noexit -command "cd ~\OneDrive\Desktop" 

;-------- Caps_2_Esc -------------------
Capslock::Send {ESC}

;--------Active_Window_Close-------------------
#q:: WinClose A
;--------Active_Window_Maximize-------------------
#f:: WinMaximize A

;--------Active_Window_Minimize-------------------
#g:: WinMinimize A
