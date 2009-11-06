            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-3    ; decrement stack pointer beyond frame
            SET     R8    , #10          
            ADD     R9    , R5    , #0    
            STR     R8    , R9    , #0    
            SET     R10   , #20          
            ADD     R11   , R5    , #-1   
            STR     R10   , R11   , #0    
            SET     R12   , #30          
            ADD     R13   , R5    , #-2   
            STR     R12   , R13   , #0    
            ADD     R14   , R5    , #0    
            LDR     R15   , R14   , #0    
            SET     R16   , #10          
            SUB     R17   , R15   , R16   
            NOTL    R18   , R17          
            BRz     R18   , L3           ; if-then-else branch, fall thru to then-stmts
            ADD     R19   , R5    , #-1   
            LDR     R20   , R19   , #0    
            SET     R21   , #10          
            SUB     R22   , R20   , R21   
            ADD     R23   , R5    , #-1   
            STR     R22   , R23   , #0    
            BRA     L2                    
        L3: NOP                            ; else label
        L2: NOP                            ; if-then-else label
            ADD     R24   , R5    , #-1   
            LDR     R25   , R24   , #0    
            SET     R26   , #10          
            SUB     R27   , R25   , R26   
            NOTL    R28   , R27          
            BRz     R28   , L5           ; if-then-else branch, fall thru to then-stmts
            ADD     R29   , R5    , #-2   
            LDR     R30   , R29   , #0    
            SET     R31   , #10          
            SUB     R32   , R30   , R31   
            ADD     R33   , R5    , #-2   
            STR     R32   , R33   , #0    
            BRA     L4                    
        L5: NOP                            ; else label
        L4: NOP                            ; if-then-else label
            SET     R34   , #10          
            ADD     R35   , R5    , #-2   
            STR     R34   , R35   , #0    
            BRz     R34   , L7           ; if-then-else branch, fall thru to then-stmts
            SET     R36   , #10          
            ADD     R37   , R5    , #0    
            STR     R36   , R37   , #0    
            BRA     L6                    
        L7: NOP                            ; else label
        L6: NOP                            ; if-then-else label
            SET     R38   , #1           
            NOT     R39   , R38          
            ADD     R39   , R39   , #1    
            STR     R39   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #3     ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
