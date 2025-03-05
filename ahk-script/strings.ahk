#Requires AutoHotkey v2.0

;==============================
;--------- Hotstring ----------
;==============================
:*:11d.::shohan11d@gmail.com 
:*:97d.::shohan97d@gmail.com 
:*:cep.::cephalonshohan@gmail.com 

:*:cc.::cutecatkin
:*:ff.::ffffff
:*:myloc.::Khan Palace, House 141/1/A, B3, ECB Chattar, Dhaka Cantonment, Dhaka 1206, Bangladesh 
:*:dont.::don't 
return

#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe vlc.exe")
^Delete:: {
    Send("{Blind}{Ctrl up}{Delete up}")
    Send("{Blind}{Alt down}{i down}{i up}{r down}{r up}{Alt up}")
}
#HotIf