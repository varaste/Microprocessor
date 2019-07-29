;
; Test.asm
;
; Created: 4/11/2018 9:29:51 AM
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
	ldi r16, 0

	clr r0
	sbrs r0, 0
	ldi r16, 10

	ldi ZH, HIGH(cn<<1)
	ldi ZL, LOW(cn<<1)
	lpm

Loop:
	sts number, r16
	inc r16
	rjmp Loop

cn: .db 'A', 'B'