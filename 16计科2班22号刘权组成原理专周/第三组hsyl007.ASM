				; DESIGN BY HSYL007 14指令
	DB	7CH,90H         ; MOV    A,#90H    90H
	DB	94H,03H		; WRITE	 03H,A (写控制字)	
        DB      90H,00H         ; READ   A,#00H
	DB	7CH,54H         ; MOV    A,#54H    54H  
	DB	94H,01H		; WRITE	 01H,A
	DB      90H,01H         ; READ   A,#01H 
	
        DB      0F0H,11H        ; XOR    A,#11H    45H
	DB	50H,0E8H	; AND	 A,#E8H    40H
	DB      60H,37H		; OR	 A,#37H    77H
	DB      0D4H            ; RL     A	   EEH
	DB      0ACH,32H        ; JMP    32H
	DB      0BCH,22H        ; CALL   22H        
	ORG     22H
	DB      0C0H		; IN  输入一个数显示出来
	DB	7CH,01H         ; MOV    A,#01H	
	DB      0D0H            ; RR     A
	DB      0CCH            ; RET	
	ORG     32H
	DB	7CH,0FFH        ; MOV    A,#FFH
	DB	1CH,01H		; ADD	 A,#01H     00H
	DB      0A4H,22H        ; JZ     22H
	DB      0CCH            ; RET
        END

