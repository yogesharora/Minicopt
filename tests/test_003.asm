            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-102  ; decrement stack pointer beyond frame
            ADD     R8    , R5    , #-99  
            SET     R9    , #10          
            MUL     R10   , R9    , #1    
            ADD     R11   , R8    , R10   
            ADD     R12   , R5    , #-101 
            STR     R11   , R12   , #0    
            SET     R13   , #5           
            ADD     R14   , R5    , #-101 
            LDR     R15   , R14   , #0    
            STR     R13   , R15   , #0    
            SET     R16   , #0           
            STR     R16   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #102   ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
