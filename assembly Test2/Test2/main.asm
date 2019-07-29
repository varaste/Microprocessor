;
; Test2.asm
;
; Created: 4/11/2018 10:59:38 AM
; Author : parham
;


.dseg
number: .byte 2

.cseg
.org 0x0000
	rjmp Main
	reti
	reti

Main:
	ldi r16, HIGH(RAMEND)
	out SPH, r16
	ldi r16, LOW(RAMEND)
	out SPL, r16
	ldi r16, 254

Loop:
	ldi ZL, LOW(number)
	ldi ZH, HIGH(number)
	st Z, r16
	inc r16
	rjmp Loop