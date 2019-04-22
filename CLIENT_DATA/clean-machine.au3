#RequireAdmin
if $CmdLine[0] > 0 Then
   run($CmdLine[1])
Else
   run(@ScriptDir & '\CCleaner.exe')
EndIf

AutoItSetOption('MouseCoordMode',0)

WinWait('Piriform CCleaner')
WinActivate('Piriform CCleaner')
sleep(1000)
; clean files
; press the "Cleaner" button
ControlClick('Piriform CCleaner', '&Run Cleaner', 'Button4')
sleep(300)
; click on "Analyze" button
MouseClick("primary", 400, 521, 1, 0)
sleep(10000)
; click on "Run Cleaner" button
MouseClick("primary", 722, 521, 1, 0)
sleep(1000)
; press the  "Continue" button
ControlClick('', 'The selected files will be deleted from your PC', 'Button1')
; give it a long wait to do the deleting... (change to 30000 in final version)
sleep(30000)


; clean registry (first pass)
; press the "Registry" button
ControlClick('Piriform CCleaner', '&Run Cleaner', 'Button6')
sleep(1000)
; click the "Scan for Issues" button
MouseClick("primary", 400, 521, 1, 0)
sleep(30000)
; click the "Fix Selected Issues" button... thjis button might be greyed out
MouseClick("primary", 722, 521, 1, 0)
sleep(300)
; press the "No" button when asked to back up registry
ControlClick('CCleaner', 'Do you want to backup changes to the registry', 'Button2')
sleep(1000)
; we don't know if there will be just one issue to fix or many...
; first, we will try clicking on the "Fix all Selected Issues" button...
MouseClick("primary", 263, 223, 1, 0)
sleep(300)
; next, we will try clicking on the "Fix Issue" button...
MouseClick("primary", 142, 223, 1, 0)
sleep(30000)
; after a long wait, we will click on the "Close" button
MouseClick("primary", 392, 223, 1, 0)

sleep(1000)

; clean registry (second pass)
; press the "Registry" button
ControlClick('Piriform CCleaner', '&Run Cleaner', 'Button6')
sleep(1000)
; click the "Scan for Issues" button
MouseClick("primary", 400, 521, 1, 0)
sleep(30000)
; click the "Fix Selected Issues" button... thjis button might be greyed out
MouseClick("primary", 722, 521, 1, 0)
sleep(300)
; press the "No" button when asked to back up registry
ControlClick('CCleaner', 'Do you want to backup changes to the registry', 'Button2')
sleep(1000)
; we don't know if there will be just one issue to fix or many...
; first, we will try clicking on the "Fix all Selected Issues" button...
MouseClick("primary", 263, 223, 1, 0)
sleep(300)
; next, we will try clicking on the "Fix Issue" button...
MouseClick("primary", 142, 223, 1, 0)
sleep(30000)
; after a long wait, we will click on the "Close" button
MouseClick("primary", 392, 223, 1, 0)

sleep(1000)

; clean registry (third pass)
; press the "Registry" button
ControlClick('Piriform CCleaner', '&Run Cleaner', 'Button6')
sleep(1000)
; click the "Scan for Issues" button
MouseClick("primary", 400, 521, 1, 0)
sleep(30000)
; click the "Fix Selected Issues" button... thjis button might be greyed out
MouseClick("primary", 722, 521, 1, 0)
sleep(300)
; press the "No" button when asked to back up registry
ControlClick('CCleaner', 'Do you want to backup changes to the registry', 'Button2')
sleep(1000)
; we don't know if there will be just one issue to fix or many...
; first, we will try clicking on the "Fix all Selected Issues" button...
MouseClick("primary", 263, 223, 1, 0)
sleep(300)
; next, we will try clicking on the "Fix Issue" button...
MouseClick("primary", 142, 223, 1, 0)
sleep(30000)
; after a long wait, we will click on the "Close" button
MouseClick("primary", 392, 223, 1, 0)

sleep(1000)

; clean registry (fourth pass)
; press the "Registry" button
ControlClick('Piriform CCleaner', '&Run Cleaner', 'Button6')
sleep(1000)
; click the "Scan for Issues" button
MouseClick("primary", 400, 521, 1, 0)
sleep(30000)
; click the "Fix Selected Issues" button... thjis button might be greyed out
MouseClick("primary", 722, 521, 1, 0)
sleep(300)
; press the "No" button when asked to back up registry
ControlClick('CCleaner', 'Do you want to backup changes to the registry', 'Button2')
sleep(1000)
; we don't know if there will be just one issue to fix or many...
; first, we will try clicking on the "Fix all Selected Issues" button...
MouseClick("primary", 263, 223, 1, 0)
sleep(300)
; next, we will try clicking on the "Fix Issue" button...
MouseClick("primary", 142, 223, 1, 0)
sleep(30000)
; after a long wait, we will click on the "Close" button
MouseClick("primary", 392, 223, 1, 0)

sleep(1000)

; all done... close the program
WinWait('Piriform CCleaner')
WinActivate('Piriform CCleaner')
sleep(300)
MouseClick("primary", 774, 19, 1, 0)

sleep(300)
