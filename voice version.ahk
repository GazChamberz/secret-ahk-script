﻿; Voice version
; use ahkhider.
; -- Now script stops when you open inventory
; -- The Script wont work if you are on the desktop
; -- Peacekeeper glitch reworked
; -- Fixed Problem where script closed itself
; -- Script should now pause if you have the grenade equppied
; -- Script should now close instantly if you press "9"

#NoEnv
#SingleInstance force
#MaxThreadsBuffer on
SetTitleMatchMode, 2
#IfWinActive r5apex.exe

Gui, Font, cWhite
Gui, Font, s10

Gui, Add, Text, x30 y10, Apex Legends No Recoil Script ~Kliment

Gui, Font, s12
Gui, Add, Text, x30 y+15, Hotkeys:
Gui, Font, s10
Gui, Add, Text, x30 y+5, "F1" Wingman
Gui, Add, Text, x30 y+5, "F2" Hemlock
Gui, Add, Text, x30 y+5, "F3" Scout
Gui, Add, Text, x30 y+5, "F4" R301
Gui, Add, Text, x30 y+5, "F5" R99
Gui, Add, Text, x30 y+5, "F6" Spitfire
Gui, Add, Text, x30 y+5, "F7" Flatline
Gui, Add, Text, x30 y+5, "F8" R45
Gui, Add, Text, x30 y+5, "F9" Alternator
Gui, Add, Text, x30 y+5, "F10" P2020
Gui, Add, Text, x30 y+5,  "F11" Peacekepper Bug
Gui, Add, Text, x30 y+5, "5" Disable Script
Gui, Add, Text, x30 y+5, "N" Autofire On/Off
Gui, Add, Text, x30 y+5, "9" Panic Close

Gui, Add, Button, x30 y+5 w115 h30 gButtonClose, Close Script
Gui, Add, Button, x150 yp w115 h30 gDiscord, Join Discord Server

Gui, Font, s8
Gui, Add, Text, x30 y+5, If you need help contact me!
Gui, Add, Text, x30 y+5, Discord: Kliment#1172

Gui, Font, s11
Gui, Font, cDA4F49
Gui, Add, Text, x30 y+5, Make sure to use the AHK Hider! 

Gui, -AlwaysOnTop
Gui, Color, Grey
Gui, Show, w350 h450, No Recoil Script

; HOTKEYS
key_RCoff:="5"			; disable key
key_Terminate:="9"	; kill script
key_1:="1"				; weapon slot 1
key_2:="2"				; weapon slot 2
key_4:="4"				; heal key
key_g:="g"				; grenade key
key_x:="3"				; holster weapons key
key_freemode:="N"		; on/off auto fire mode
key_akm:="F1"			; Wingman
key_m16a4:="F2"			; Hemlock
key_skspubg:="F3"		; Scout
key_uzi:="F4"			; R301
key_vector:="F5"		; R99
key_m416:="F6"			; Spitfire
key_scar:="F7"			; Flatline
key_ump:="F8"			; R45
key_groza:="F9"			; Alternator
key_glock:="F10"		; P2020
key_peacekeeper:="F11"	; Peacekeeper (glicth)

; SENSITIVITY
sens:=2.5				; your sensitivity
zoomsens:=1.0			; your zoom sensitivity
; VOICE
rate = 7				; 0 default, >0 to speed up, <0 to slow down
volume = 80				; range 0-100

;SAPI.voice := SAPI.GetVoices().Item(1) 	; uncomment this line to get female voice.
suspend:=on
gun1:=0
gun2:=0
sec:=0
FreeMode:=0
firstrun:=0
sauto:=0
key_shoot:="LButton"
key_zoom:="RButton"
modifier:=2.50/sens
SAPI := ComObjCreate("SAPI.SpVoice")
SAPI.rate := rate
SAPI.volume := volume
loop {
if GetKeyState(key_freemode)
{
if freemode = 1
{
freemode:=0
manualdisable:=1
SAPI.Speak("auto off")
sleep 150
}
else
{
freemode:=1
SAPI.Speak("auto on")
manualdisable:=0
sleep 150
}
}
if GetKeyState(key_1)
{
disable:=true
sec:=0
if gun1 = 1
{
if firstrun = 1
{
m16a4:=false
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if	mhemlock = 1
{
if manualdisable = 0
{
FreeMode:=1
}
m16a4:=true
SAPI.Speak("mhemlock")
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if	mr301 = 1
{
uzi:=true
FreeMode:=0
SAPI.Speak("mr301")
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if  mr45 = 1
{
ump:=true
SAPI.Speak("mr45")
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if mwingman = 1
{
if manualdisable = 0
{
FreeMode:=1
}
akm:=true
SAPI.Speak("mwingman")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if mvector = 1
{
akm:=false
SAPI.Speak("mR99")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=true
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if mspitfire = 1
{
akm:=false
SAPI.Speak("mspitfire")
m416:=true
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if mscout = 1
{
akm:=false
SAPI.Speak("mscout")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=true
Tgun:=false
peacekeeper:=false
if manualdisable = 0
{
FreeMode:=1
}
}
if mflatline = 1
{
akm:=false
SAPI.Speak("mflatline")
m416:=false
uzi:=false
ump:=false
scar:=true
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if m2020 = 1
{
akm:=false
SAPI.Speak("m2020")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=true
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
if manualdisable = 0
{
FreeMode:=1
}
}
if malt = 1
{
akm:=false
SAPI.Speak("malt")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=true
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if mpeacekeeper = 1
{
akm:=false
SAPI.Speak("mpeacekeeper")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=true
FreeMode:=0
vpeaceslot1:=2
vpeaceslot2:=1
}
}
}
if GetKeyState(key_2)
{
sec:=1
disable:=true
{
if firstrun = 1
{
m16a4:=false
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if	shemlock = 1
{
m16a4:=true
SAPI.Speak("shemlock")
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
if manualdisable = 0
{
FreeMode:=1
}
}
if	sr301 = 1
{
uzi:=true
SAPI.Speak("sr301")
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
if manualdisable = 0
{
FreeMode:=1
}
}
if  sr45 = 1
{
ump:=true
SAPI.Speak("sr45")
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if swingman = 1
{
akm:=true
SAPI.Speak("swingman")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
if manualdisable = 0
{
FreeMode:=1
}
}
if svector = 1
{
akm:=false
SAPI.Speak("sR99")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=true
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if sspitfire = 1
{
akm:=false
SAPI.Speak("sspitfire")
m416:=true
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if sscout = 1
{
akm:=false
SAPI.Speak("sscout")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=true
Tgun:=false
peacekeeper:=false
if manualdisable = 0
{
FreeMode:=1
}
}
if sflatline = 1
{
akm:=false
SAPI.Speak("sflatline")
m416:=false
uzi:=false
ump:=false
scar:=true
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if s2020 = 1
{
akm:=false
SAPI.Speak("s2020")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=true
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
if manualdisable = 0
{
FreeMode:=1
}
}
if salt = 1
{
akm:=false
SAPI.Speak("salt")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=true
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if speacekeeper = 1
{
akm:=false
SAPI.Speak("speacekeeper")
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=true
FreeMode:=0
vpeaceslot1:=1
vpeaceslot2:=2
}
}
}
if GetKeyState(key_x)
{
disable:=false
}
if GetKeyState(key_g)
{
disable:=false
}
if GetKeyState(key_4)
{
disable:=false
}
if GetKeyState(key_ump)
{
if sec = 1
{
gun2:=1
SAPI.Speak("sr45")
sr301:=0
swingman:=0
shemlock:=0
sr45:=1
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
salt:=0
speacekeeper:=0
}
else
{
gun1:=1
SAPI.Speak("mr45")
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=1
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
}
ump:=true
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if GetKeyState(key_glock)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=0
SAPI.Speak("s2020")
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
salt:=0
s2020:=1
speacekeeper:=0
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
SAPI.Speak("m2020")
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
malt:=0
m2020:=1
mpeacekeeper:=0
firstrun:=0
}
glock:=true
ump:=false
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
FreeMode:=0
}
if GetKeyState(key_m16a4)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=1
SAPI.Speak("shemlock")
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
salt:=0
firstrun:=0
s2020:=0
speacekeeper:=0
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=1
SAPI.Speak("mhemlock")
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
malt:=0
m2020:=0
mpeacekeeper:=0
firstrun:=0
}
FreeMode:=1
m16a4:=true
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_scar)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=0
SAPI.Speak("sflatline")
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=1
s2020:=0
firstrun:=0
salt:=0
speacekeeper:=0
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
SAPI.Speak("mflatline")
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
m2020:=0
mflatline:=1
malt:=0
mpeacekeeper:=0
firstrun:=0
}
scar:=true
FreeMode:=0
m416:=false
uzi:=false
akm:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_m416)
{
if sec = 1
{
gun2:=1
gun1:=1
sr301:=0
swingman:=0
shemlock:=0
SAPI.Speak("sspitfire")
sr45:=0
svector:=0
sspitfire:=1
sscout:=0
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
speacekeeper:=0
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
SAPI.Speak("mspitfire")
mr45:=0
mvector:=0
m2020:=0
mspitfire:=1
mscout:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
}
m416:=true
FreeMode:=0
ump:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_akm)
{
if sec = 1
{
gun2:=1
sr301:=0
swingman:=1
SAPI.Speak("swingman")
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
speacekeeper:=0
}
else
{
gun1:=1
mr301:=0
mwingman:=1
SAPI.Speak("mwingman")
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
}
akm:=true
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
m2020:=0
peacekeeper:=false
}
if GetKeyState(key_uzi)
{
if sec = 1
{
gun2:=1
sr301:=1
SAPI.Speak("sr301")
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
s2020:=0
firstrun:=0
salt:=0
speacekeeper:=0
}
else
{
gun1:=1
mr301:=1
SAPI.Speak("mr301")
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
}
uzi:=true
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_groza)
{
if sec = 1
{
gun2:=1
sr301:=0
SAPI.Speak("salt")
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
s2020:=0
firstrun:=0
salt:=1
speacekeeper:=0
}
else
{
gun1:=1
mr301:=0
SAPI.Speak("malt")
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=1
mpeacekeeper:=0
firstrun:=0
}
groza:=true
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
speacekeeper:=false
}
if GetKeyState(key_m249)
{
m249:=true
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_vector)
{
if sec = 1
{
gun2:=1
SAPI.Speak("sR99")
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=1
sspitfire:=0
sscout:=0
sflatline:=0
s2020:=0
firstrun:=0
salt:=0
speacekeeper:=0
}
else
{
gun1:=1
SAPI.Speak("mR99")
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=1
mspitfire:=0
mscout:=0
m2020:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
}
vector:=true
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=false
mk14pubg:=false
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_skspubg)
{
if sec = 1
{
gun2:=1
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
SAPI.Speak("sscout")
sscout:=1
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
speacekeeper:=0
}
else
{
gun1:=1
mr301:=0
mwingman:=0
mhemlock:=0
SAPI.Speak("mscout")
mr45:=0
mvector:=0
mspitfire:=0
mscout:=1
m2020:=0
mflatline:=0
malt:=0
mpeacekeeper:=0
firstrun:=0
}
vector:=false
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=true
Tgun:=false
peacekeeper:=false
}
if GetKeyState(key_Tgun)
{
Tgun:=true
vector:=false
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=false
peacekeeper:=false
}
if GetKeyState(key_peacekeeper)
{
if sec = 1
{
gun2:=1
speacekeeper:=1
sr301:=0
swingman:=0
SAPI.Speak("speacekeeper")
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
firstrun:=0
s2020:=0
salt:=0
}
else
{
gun1:=1
mpeacekeeper:=1
mr301:=0
mwingman:=0
SAPI.Speak("mpeacekeeper")
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
m2020:=0
malt:=0
firstrun:=0
}
peacekeeper:=true
akm:=false
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
m2020:=0
}
if GetKeyState(key_Terminate)
{
sleep 2000
ExitApp
}
if GetKeyState(key_RCoff)
{
firstrun:=1
akm:=false
uzi:=false
scar:=false
ump:=false
m416:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false
peacekeeper:=false
sr301:=0
swingman:=0
shemlock:=0
sr45:=0
svector:=0
sspitfire:=0
sscout:=0
sflatline:=0
speacekeeper:=0
mr301:=0
mwingman:=0
mhemlock:=0
mr45:=0
mvector:=0
mspitfire:=0
mscout:=0
mflatline:=0
mpeacekeeper:=0
m2020:=0
s2020:=0
malt:=0
salt:=0
SAPI.Speak("disabled")
}
{
isMouseShown()
{
StructSize := A_PtrSize + 16
VarSetCapacity(InfoStruct, StructSize)
NumPut(StructSize, InfoStruct)
DllCall("GetCursorInfo", UInt, &InfoStruct)
Result := NumGet(InfoStruct, 8)
if Result > 1
return 1
else
return 0
}
{
if isMouseShown() == 1		; checks if mouse cursor is visible and disables script
disable:=false		; set to true for testing on desktop
else
disable:=true
}
if GetKeyState(key_shoot)
{
sauto:=1
if disable
{
if ump
{
loop
{
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 8*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{ 
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 3*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if akm
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 40
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 100
}
if uzi
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 12*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 6*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 4*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 42
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m416
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 14*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -10*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 2*modifier)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if groza
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 16*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 6*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if glock
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 18*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 14*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 18*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 10*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if scar
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 18*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 18*modifier)
sleep 20
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 10*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 8*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 0*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 4*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 6*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 2*modifier)
sleep 112
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 120
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m249
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 34*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if Tgun
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 60*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 70*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if vector
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 10*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 14*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 63
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if skspubg
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 15
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
dllcall("mouse_event","UInt",0x02)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 900
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
else if m16a4
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 1
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 65
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 5
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
if freemode = 1
{
if sauto = 1
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 10
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
}
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
}
}
else if peacekeeper
{
loop 
{
if GetKeyState(key_shoot)
{
peacekeeperglitch(vpeaceslot1, vpeaceslot2)
}
break
}
sleep 100
}
}
}
else
{
sauto:=0
}
}
}
peacekeeperglitch(vpeaceslot1, vpeaceslot2) {
Hotkey, LButton, label1
Send, {r Down}
Sleep, 50
Send, {r up}
Sleep, 200
Send, {%vpeaceslot1% Down}
Sleep, 20
Send, {%vpeaceslot1% Up}
Sleep, 20
Send, {%vpeaceslot2% Down}
Sleep, 20
Send, {%vpeaceslot2% Up}
Sleep, 130
Hotkey, LButton, Off
return
}
label1:
return
activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  ) {
CoordMode, Mouse, Screen
MouseGetPos, mouseX , mouseY
SysGet, monCount, MonitorCount
Loop %monCount% {
SysGet, curMon, Monitor, %a_index%
if ( mouseX >= curMonLeft and mouseX <= curMonRight and mouseY >= curMonTop and mouseY <= curMonBottom ) {
X      := curMonTop
y      := curMonLeft
Height := curMonBottom - curMonTop
Width  := curMonRight  - curMonLeft

	return
	
}
}
}
ButtonClose:
	ExitApp
	return
	
Discord:
Run, https://discord.gg/zChMbXY
	return
