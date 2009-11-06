            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-1000 ; decrement stack pointer beyond frame
            SET     R8    , #100         
            ADD     R9    , R4    , #2    
            STR     R8    , R9    , #0    
            ADD     R10   , R4    , #2    
            LDR     R11   , R10   , #0    
            ADD     R12   , R5    , #-999 
            SET     R13   , #5           
            MUL     R14   , R13   , #1    
            ADD     R15   , R12   , R14   
            STR     R11   , R15   , #0    
            ADD     R16   , R4    , #2    
            LDR     R17   , R16   , #0    
            STR     R17   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #1000  ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
