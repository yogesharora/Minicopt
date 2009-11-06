            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-11   ; decrement stack pointer beyond frame
            ADD     R8    , R5    , #-10  
            SET     R9    , #3           
            MUL     R10   , R9    , #1    
            ADD     R11   , R8    , R10   
            LDR     R12   , R11   , #0    
            SET     R13   , #1           
            ADD     R14   , R12   , R13   
            ADD     R15   , R5    , #0    
            STR     R14   , R15   , #0    
            SET     R16   , #5           
            ADD     R17   , R5    , #-10  
            SET     R18   , #6           
            MUL     R19   , R18   , #1    
            ADD     R20   , R17   , R19   
            STR     R16   , R20   , #0    
            ADD     R21   , R5    , #0    
            LDR     R22   , R21   , #0    
            ADD     R0    , R22   , #0    
            OUT
            SET     R23   , #10          
            ADD     R24   , R5    , #0    
            STR     R23   , R24   , #0    
            SET     R25   , #0           
            STR     R25   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #11    ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
