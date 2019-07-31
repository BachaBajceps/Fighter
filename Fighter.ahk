#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ;
    #InstallMouseHook ;
#InstallKeybdHook ;
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ;

stop := false ;
toggle := true ;

Kilof_s = 0 ;
miecz_s = 0 ;
wedka_s = 0 ;

Bicie_HK = L ;
Kilof_HK = F ;
Wedka_HK = V ;

old_k = F11 ;
old_b = F11 ;
old_w = F11 ;

; --GUI--
Gui,+AlwaysOnTop ;
Gui, +ToolWindow ;

Gui, Add, Slider,ToolTipTop gSubmitAll vClickSpeed Range0-20 w200 , 0 ; Szybko�� klikania
Gui, Add, Text, +Center w200 ca1a1a1, Predkosc Klikania ;
Gui, Add, Radio, gSubmitAll vLewy Checked Group x20 , Lewy ; 
Gui, Add, Radio, gSubmitAll vPrawy x120 yp, Prawy ;

Gui, Add, Text,y100 x15 , Wlanczanie: ;
Gui, Add, Hotkey,yp x80 gskroty vBicie_HK, L  ;add a hotkey control
Gui, Add, Text, x15 , Kilof: ;
Gui, Add, Hotkey,yp x80 gskroty vKilof_HK, F ; 
Gui, Add, Text, x15 , Wedka: ;
Gui, Add, Hotkey,yp x80 gskroty vWedka_HK, V ;

Gui, Add, Edit, limit1 -Wrap x5 y185 w20 vSlot0 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x30  w20 yp vSlot1 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x55  w20 yp vSlot2 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x80  w20 yp vSlot3 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x105  w20 yp vSlot4 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x130  w20 yp vSlot5 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x155  w20 yp vSlot6 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x180  w20 yp vSlot7 gSubmitAll,
Gui, Add, Edit, limit1 -Wrap x205  w20 yp vSlot8 gSubmitAll,

Gui, Add, Text, x10 y207 ca1a1a1, 1 ;
Gui, Add, Text, x35 ca1a1a1 yp, 2 ;
Gui, Add, Text, x60 ca1a1a1 yp, 3 ;
Gui, Add, Text, x85 ca1a1a1 yp, 4 ;
Gui, Add, Text, x110 ca1a1a1 yp, 5 ;
Gui, Add, Text, x135 ca1a1a1 yp, 6 ;
Gui, Add, Text, x160 ca1a1a1 yp, 7 ;
Gui, Add, Text, x185 ca1a1a1 yp, 8 ;
Gui, Add, Text, x210 ca1a1a1 yp, 9 ;

Gui, Add, Button, x15 y235 w200 gUpdate, Aktualizuj ;
Gui, Add, Button, x120 y265 w100 gPomoc, POMOC ;

Gui, Font, s7 ;
Gui, Add, Text,y300 x130 ca1a1a1  , Pajacuwa Fighter ;
Gui, Add, Text,y320 x120 ca1a1a1  , Autor Bacha_Bajceps ;
Gui, Font, s9 ;

Gui, Show, xCenter yCenter w230 h370 , Pajacuwa Fighter ;
Goto, skroty ; 
;--Funkcje--

SubmitAll:
    Gui, Submit, NoHide ;
    
    if (Slot0 != null)
    {
        if (Slot0 = "k")
        {
            Kilof_s = 1 ;
        }
        
        if (Slot0 = "m")
        {
            miecz_s = 1
        }
        
        if (Slot0 = "w")
        {
            wedka_s = 1 ;
        }
    }
    
    if (Slot1 != null)
    {
        if (Slot1 = "k")
        {
            Kilof_s = 2 ;
        }
        
        if (Slot1 = "m")
        {
            miecz_s = 2
        }
        
        if (Slot1 = "w")
        {
            wedka_s = 2 ;
        }
    }
    
    if (Slot2 != null)
    {
        if (Slot2 = "k")
        {
            Kilof_s = 3 ;
        }
        
        if (Slot2 = "m")
        {
            miecz_s = 3 ;
        }
        
        if (Slot2 = "w")
        {
            wedka_s = 3 ;
        }
    }
    
    if (Slot3 != null)
    {
        if (Slot3 = "k")
        {
            Kilof_s = 4 ;
        }
        
        if (Slot3 = "m")
        {
            miecz_s = 4
        }
        
        if (Slot3 = "w")
        {
            wedka_s = 4 ;
        }
    }
    
    if (Slot4 != null)
    {
        if (Slot4 = "k")
        {
            Kilof_s = 5 ;
        }
        
        if (Slot4 = "m")
        {
            miecz_s = 5
        }
        
        if (Slot4 = "w")
        {
            wedka_s = 5 ;
        }
    }
    
    if (Slot5 != null)
    {
        if (Slot5 = "k")
        {
            Kilof_s = 6 ;
        }
        
        if (Slot5 = "m")
        {
            miecz_s = 6
        }
        
        if (Slot5 = "w")
        {
            wedka_s = 6 ;
        }
    }
    
    if (Slot6 != null)
    {
        if (Slot6 = "k")
        {
            Kilof_s = 7 ;
        }
        
        if (Slot6 = "m")
        {
            miecz_s = 7
        }
        
        if (Slot6 = "w")
        {
            wedka_s = 7 ;
        }
    }
    
    if (Slot7 != null)
    {
        if (Slot7 = "k")
        {
            Kilof_s = 8 ;
        }
        
        if (Slot7 = "m")
        {
            miecz_s = 8
        }
        
        if (Slot7 = "w")
        {
            wedka_s = 8 ;
        }
    }
    
    if (Slot8 != null)
    {
        if (Slot8 = "k")
        {
            Kilof_s = 9 ;
        }
        
        if (Slot8 = "m")
        {
            miecz_s = 9
        }
        
        if (Slot8 = "w")
        {
            wedka_s = 9 ;
        }
    }
    Gui Show ;
Return

skroty:
    Hotkey, %old_k%, Start, off ;
    Hotkey, %old_b%, Kilof, off ;
    Hotkey, %old_w%, Kilof, off ;
    
    Hotkey, %Bicie_HK%, Start, On ;
    Hotkey, %Kilof_HK%, Kilof, On ;
    Hotkey, %Wedka_HK%, Wedka, On ;
    
    old_k = %Kilof_HK% ;
    old_b = %Bicie_HK% ;
    old_w = %Wedka_HK% ;
return

#MaxThreadsPerHotkey 2 ;
Start:
    WinGetActiveTitle, Okno ;
    toggle := !toggle  ;toggle on off
    SetTimer, RemoveToolTip, -500 ;
    if(toggle = true) 
    {
        ToolTip, Autocliker: Aktywowany ;
        Hotkey, %Kilof_HK%, Kilof, On ;
        Hotkey, %Wedka_HK%, Wedka, On ;
    }else{
        ToolTip, Autocliker: Dezaktywowany ;
        Hotkey, %Kilof_HK%, Kilof, Off ;
        Hotkey, %Wedka_HK%, Wedka, Off ;
    }
    
    While, toggle = true && Okno != "Pajacuwa Fighter"
    {
        If (Lewy = 1 && GetKeyState("LButton","P") && stop = 0)
        {
            Click, Left ;
            Sleep, (1000/ClickSpeed) ;
        }
        
        If (Prawy = 1 && GetKeyState("RButton","P") && stop = 0)
        {
            Click, Right ;
            Sleep, (1000/ClickSpeed) ;
        }
    }
    
Return

RemoveToolTip:
    ToolTip
return

#MaxThreadsPerHotkey 2 ;
Kilof:
    WinGetActiveTitle, Okno ;
    if(Okno != "Pajacuwa Fighter" && toggle = true) 
    {
        stop := !stop ;
        if(stop = true) 
        {
            Send, %Kilof_s% ;
        }Else{
            Send, %miecz_s% ;
        }
    }
Return

Wedka:
    WinGetActiveTitle, Okno ;
    if(Okno != "Pajacuwa Fighter" && toggle = true) 
    {
        Send, %wedka_s% ;
        Sleep 30 ;
        Click, Right ;
        Sleep, 240 ;
        Send, %miecz_s% ;
    }
return

Update:
    Run https://github.com/BachaBajceps/Fighter/releases ;
return

Pomoc:
    Run https://github.com/BachaBajceps/Fighter/wiki/Pomoc ;
return

GuiClose:
    ExitApp
    
F9::ExitApp
    