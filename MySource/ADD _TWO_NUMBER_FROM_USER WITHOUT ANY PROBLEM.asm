;add two_number
.STACK
.data
S1 DB 10,13 ,"ENTER A NUMBER:$"
S2 DB 10,13, "RESULT IS :$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    ;number_1
    LEA DX,S1
    MOV AH,09H
    INT 21H
    MOV AH,01H
    INT 21H
    MOV CL,AL
    ;number_2
      LEA DX,S1
    MOV AH,09H
    INT 21H
    MOV AH,01H
    INT 21H
  MOV AH,0H
    ADD AL,CL
    AAA
    ;result
   ADD AL,30H
   ADD AH,30H
   MOV CL,AL
   MOV CH,AH
   LEA DX,S2
   MOV AH,9H
   INT 21H
   MOV AH,2H
   MOV DL,CH
   INT 21H
   MOV DL,CL
   INT 21H