; CNCjs -> Upload G-Code -> "Play" button (after "Open" port)
; If Grbl, Baud rate to 115200
;
; head's pin starts down
; wire's end starts where it was left last time after cutting wire
;
G91     ; set Incremental Positioning (init)
G0 Z18  ; move wire backward 18mm
G0 Z-14 ; move wire forward 14mm
G0 X-21 ; move head's pin up (start bending up)
G0 X19  ; move head's pin down
G0 X1   ; adjust head's pin
G0 X1
G0 Z1   ; move wire backward 1mm (end bending up)
G0 X-21 ; repeat bending up
G0 X19
G0 X1
G0 X1
G0 Z1
G0 X-21 ; repeat bending up
G0 X19
G0 X1
G0 X1
G0 Z1   ; end last bending up repetition
G0 Z-51 ; move wire forward 51mm
G0 X1   ; adjust head's pin
G0 X1
G0 X-21 ; move head's pin up (start bending up)
G0 X19
G0 X1
G0 Z1
G0 X-21 ; repeat bending up
G0 X19
G0 X1
G0 Z1
G0 X-21 ; repeat bending up
G0 X19
G0 X1
G0 Z1   ; end last bending up repetition
G0 Z-28 ; more wire forward 28mm
G90     ; end
