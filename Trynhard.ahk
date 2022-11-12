/*  Jacks Tryhard Macros
        This AutoHotKey script is maked for GrandTheftAutoV.
*/
/*IDEAS
Blocks do a macro while being in chat function
One Key can have up to four functions.
Douple Click function.
Ceo Mode (On/Off)
Function to set Hotkeys.
Anti AFK Kick
*/
NumpadMult::Suspend
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#NoEnv  			     				;--------------------------------------> Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input 							;--------------------------------------> Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  	     	;--------------------------------------> Ensures a consistent starting directory.
#SingleInstance, Force                  ;--------------------------------------> Determines whether a script is allowed to run again when it is already running
#UseHook								;--------------------------------------> Makes the script is working in gta
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IntMenuDelay := 45
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;Ceo/Mc Functions:
    ;BST                := NumpadEnter
    ;Drop Amour         := F2
    ;Full Ammo          := F1
    ;Thermal            := F11
    
;Non Ceo Functions:
    ;Equip Amour        := Numpad3
    ;Thermal            := (F11)
    

;Both:
    ;Sniper fast fire   := LAlt
    ;JobBlips On/Off    := F4
    ;Chat spam          := F8

;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;All Keys:                          CEO Mode                            Non CEO Mode                        Douple Toggle (CEO Mode)            Douple Toggle (Non CEO Mode)
    ;F Keys:
        ;F1                     :=  Full Ammo                       :=  Full Ammo                       :=  RPG Ammo                        :=  RPG Ammo
        ;F2                     :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;F3                     :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;F4                     :=  Job Blips On/Off                :=  Job Blips On/Off                :=  ---                             :=  ---
        ;F5                     :=  Rc Bandito                      :=  Rc Bandito                      :=  Leave Rc Bandito                :=  Leave Rc Bandito
        ;F6                     :=  Go Passiv                       :=  Go Passiv                       :=  Deactivate Passiv               :=  Deactivate Passiv
        ;F7                     :=  Chat Msg  (Time)                :=  Chat Msg  (Time)                :=  ---                             :=  ---
        ;F8                     :=  Chat Spam (empty msg)           :=  Chat Spam (empty msg)           :=  Chat Spam (Clipboard)           :=  Chat Spam (Clipboard)
        ;F9                     :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;F10                    :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;F11                    :=  De/activate Thermal             :=  De/activate Thermal             :=  ---                             :=  ---
        ;F12                    :=  De/activate CEO Mode            :=  De/activate CEO Mode            :=  ---                             :=  ---
    ;Numpad Keys:
        ;Numpad1                :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;Numpad3                := Drop Amour                       :=  Equip Heavy Amour               :=  Equip Heavy Amour (CEO)         :=  ---
        ;Numpad7                :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;Numpad9                := Leave Ceo                        :=  Register Ceo                    :=
        ;NumpadDiv              :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;NumpadMult             :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;NumpadSub              :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;NumpadAdd              :=  ---                             :=  ---                             :=  ---                             :=  ---
        ;NumpadEnter            :=  Bst Drop                        :=  Equip Heavy Amour (weapon w.)   :=  ---                             :=  ---
        ;Numpad0                :=  ---                             :=  ---                             :=  ---                             :=  ---
    ;Others:
        ;DoubleClick Keys:
            ;2                  :=  Suicide (Passiv)                :=  Suicide (Passiv)                :=  ---                             :=  ---
            ;3                  :=  Suicide                         :=  Suicide                         :=  ---                             :=  ---
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
F12::                               ;Ceo Modus
mode := !mode
Return
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#if mode = 1 ;Ceo Mode Functions
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Unregister CEO
Numpad9::
Send, {M}
sleep, IntMenuDelay
Send, {Enter}{Up}{Enter}
Return
;BST Drop
NumpadEnter::
send, {M}
sleep, IntMenuDelay
send, {Enter}
send, {Up 3}{Enter}{Down}{Enter}
return
;Go Passiv (CEO)
F6::
Send, {M}
Sleep, IntMenuDelay
Send, {Enter}{Up}{Enter}
Sleep, 250
send, {M}
Sleep, IntMenuDelay
Send, {Up}{Enter}{M}
Return
;Drop Amour
Numpad3::
send, {M}
sleep, IntMenuDelay
send, {Enter}{Up 3}{Enter}{Down 3}{Enter}
Return
;Job blips
F4::
send, {M}
sleep, IntMenuDelay
send, {Up 8}{Enter}{Down}{Enter}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{Down}{Enter}{M}
return
;Thermal de/activate
F11::
send, {M}
sleep, IntMenuDelay
send, {Down 4}{Enter}{Down}{Enter}{Down 4}{Space}{M}
Return
;Rc Bandito
F5::
Send, {M}
Sleep, IntMenuDelay
send, {Down 3}{Enter}{Up 4}{Enter 2}
Return
;--------------------------------------------------------------------------
#if mode = 0 ;None CEO Mode Functions
;--------------------------------------------------------------------------
; Register CEO
Numpad9::
send, {M}
sleep, IntMenuDelay
send, {Down 6}
send, {Enter 2}
Return
;chat spam
F8::
loop, 20
{
send, {t}{space}{Enter}
}
Return
;Go Passiv (Non CEO)
F6::
send, {M}
Sleep, IntMenuDelay
Send, {Up}{Enter}{M}
Return
;Equip Heavy Amour
Numpad3::
send, {M}
sleep, IntMenuDelay
send, {Down 2}{Enter}{Down 3}{Enter}{Down 4}{Enter}{M}
;--------------------------------------------------------------------------
; Function wich works with CEO and Non CEO Mode
;--------------------------------------------------------------------------

;Suicides
3::                                 ;Fast Suicide
send, {m}
sleep, IntMenuDelay
send, {C down}{Up}{Up}{CapsLock}{CapsLock}{Return}{Return}{C up}
Return

F1::					            ;Full Ammo
send, {M}
sleep, IntMenuDelay
send, {Up 12}{Enter}{Down 5}{Enter}
sleep, 80
send, {Left}{Down}{Enter}
sleep, 80
send, {M}
return

LAlt::				                ;Sniper fast fire
Send, {5}{9}
Return



F3::                                ;Rpg Ammo
Send, {M}
Sleep, IntMenuDelay
Send, {Up 12}{Enter}{Down 5}{Enter}{Down}{Right}{Down 2}{Enter}{M}
Return

