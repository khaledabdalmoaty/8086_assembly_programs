.stack
.data
ARRAY DB 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,20,19,18
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,19H 
    LEA SI,ARRAY
    OUTER:
    mov bx,0
    INNER:
    MOV AL,[SI+BX]
    MOV DL,[SI+BX+1]
    CMP AL,DL
    JA NO_SWAP
    MOV [SI+BX],DL
    MOV [SI+BX+1],AL
    NO_SWAP:
    INC BX
    CMP BX,CX
    JB INNER
    DEC CX
    JNZ OUTER  
    PRINT:
    MAIN ENDP
END MAIN
HLT