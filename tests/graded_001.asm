            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-205  ; decrement stack pointer beyond frame
            SET     R8    , #10          
            ADD     R9    , R5    , #-1   
            ADD     R10   , R9    , #0    
            STR     R8    , R10   , #0    
            SET     R11   , #1           
            ADD     R12   , R5    , #-1   
            ADD     R13   , R12   , #1    
            STR     R11   , R13   , #0    
            ADD     R14   , R5    , #-1   
            ADD     R15   , R5    , #-2   
            STR     R14   , R15   , #0    
            ADD     R16   , R5    , #-2   
            ADD     R17   , R5    , #-3   
            STR     R16   , R17   , #0    
            ADD     R18   , R5    , #-3   
            ADD     R19   , R5    , #-4   
            STR     R18   , R19   , #0    
            SET     R20   , #0           
            STR     R20   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #205   ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
