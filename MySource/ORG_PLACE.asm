
.data
VAR1 DB "KHALED","$"
VAR2 DB "MOHAMED","$"
.CODE 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
   
    LEA DX,VAR1
    mov AH,2H
    INT 21H  
    MAIN ENDP
END MAIN
    
                      
