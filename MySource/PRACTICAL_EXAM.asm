;PRACTICAL EXAM PROBLEM
include "emu8086.inc"
.STACK
.DATA
ENTER DB 10,13,"ENTER A NUMBER:$"
ARRAY DB 10 DUP(?)
RESULT DB 10,13,"RESULT:$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV DI,0H
    MOV BL,0H
    MOV AX,0H
   MOV CX,0H
       START:
    MOV AH,09H
    LEA DX,ENTER
    INT 21H
    MOV AH,01H
    INT 21H
    CMP AL,"#"
    JE CAL
    MOV DL,AL
     MOV BL,2H
    DIV BL
    CMP AH,0
    JE ADD_TO_ARRAY
    JMP START
    
    
    ADD_TO_ARRAY:
   SUB DL,30H
    MOV ARRAY[DI],DL
    INC DI
    INC CX
    JMP START
    CAL:
    ZERO:
     MOV SI,0H
     MOV AX,0H
     cmp cx,0
     je exit
            BEG_CAL:
     MOV BL,ARRAY[SI]
     INC SI
      ADD AL,BL
      DEC CX
      JNZ BEG_CAL
       RESU:
  AAA
     MOV BH,AH
     MOV BL,AL
    MOV AH,09
    LEA DX,RESULT
    INT 21H
     ADD BH,30H
     ADD BL,30H
     MOV DL,BH
     MOV AH,02H
     INT 21H
     MOV DL,BL
     INT 21H     
    hlt     
     exit:
      print "all you enter is andd number"