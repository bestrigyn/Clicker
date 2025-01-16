#include <Misc.au3>
HotKeySet('{q}', '_exit')
HotKeySet('{y}', '_clicker')

Opt("SendKeyDownDelay", 0)

Global $clickON = False

Func _clicker()
    $clickON = Not $clickON
EndFunc


While True
    If $clickON Then
		Send("{NUMPAD2 down}")
		Sleep(31		)
		Send("{NUMPAD2 up}")
		Sleep(11)
		#MouseDown("primary")
		#MouseUp("primary")
	EndIf
WEnd


Func _exit()
    Exit
EndFunc

