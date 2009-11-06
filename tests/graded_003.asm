            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-2    ; decrement stack pointer beyond frame
            IN
            ADD     R8    , R0    , #0    
            ADD     R9    , R5    , #0    
            STR     R8    , R9    , #0    
            ADD     R10   , R5    , #0    
            LDR     R11   , R10   , #0    
            ADD     R12   , R5    , #-1   
            STR     R11   , R12   , #0    
            ADD     R13   , R5    , #0    
            LDR     R14   , R13   , #0    
            ADD     R0    , R14   , #0    
            OUT
            SET     R15   , #0           
            STR     R15   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #2     ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
