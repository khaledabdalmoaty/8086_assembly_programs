.data
var1 db 22h
var2 db 44h
var3 db 44h
MEM1 DB ?
MEM2 DB ?
MEM3 DB ?



.CODE
MAIN PROC
    MOV AX ,@DATA
    MOV DS,AX
    MOV AL,VAR1
    MOV MEM1,AL
    MOV AL,VAR2
    MOV MEM2,AL
    MOV AL,VAR3
    MOV MEM3,AL
    MAIN ENDP
END MAIN