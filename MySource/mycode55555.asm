.stack
.DATA
S1 DB 10,13,"ENTER A NUMBER:$"
S2 DB 10,13,"RESULT:$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,S1
    MOV AH,09H
    INT 21H
    MOV AH,01H
    INT 21                           
    MOV BL,AL
    ;NUMBER TWO
    LEA DX,S1
    MOV AH,09H
    INT 21H
    MOV AH,01H
    INT 21
    MOV BH,AL
    ;RESULT
    ADD BL,BH
    AAA
    ADD BL,30H
    ADD BH,30H
    
    
    
   
    
    LEA DX,S2
    MOV AH,09H
    INT 21H
    MOV AH,02H
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H