; CNCjs -> Upload G-Code -> "Play" button (after "Open" port)
; If Grbl, Baud rate to 115200
;
; head's pin starts down
; wire's end starts where it was left last time after cutting wire
;
G91     ; se Incremental Positioning (init)
G0 Z9  ; move wire backward 9mm
G0 X-19 ; move head's pin up
G0 X-1  ; adjust head's pin
G0 Z-10 ; move wire forward 10mm
G0 X20  ; move head's pin down (start bending down)
G0 X-19 ; move head's pin up
G0 X-1
G0 Z-1  ; move wire backward 1mm (end bending down)
G0 X20  ; repeat bending down
G0 X-19
G0 X-1
G0 Z1
G0 X20  ; repeat bending down
G0 X-19
G0 X-1
G0 Z1   ; end last bending down repetition
G0 X20  ; move head's pin down
G0 Z-40 ; move wire forward 40mm
G0 X1   ; adjust head's pin
G0 X-20 ; move head's pin up (start bending up)
G0 X19  ; move head's pin down
G0 X1   ; adjust head's pin
G0 X-20 ; repeat bending up
G0 X19
G0 X1
G0 X-20 ; repeat bending up
G0 X19
G0 X1   ; end last bending up repetition
G0 Z-22 ; more wire forward 22mm
G90     ; end
