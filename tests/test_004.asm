            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-103  ; decrement stack pointer beyond frame
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
            ADD     R17   , R5    , #-100 
            STR     R16   , R17   , #0    
        L2: ADD     R18   , R5    , #-100  ; enter for loop
            LDR     R19   , R18   , #0    
            SET     R20   , #100         
            SUB     R21   , R19   , R20   
            BRn     R21   , L5          
            SET     R21   , #0           
        L5: NOP                            ; less-than label
            BRz     R21   , L4          
            ADD     R22   , R5    , #-101 
            LDR     R23   , R22   , #0    
            LDR     R24   , R23   , #0    
            SET     R25   , #10          
            ADD     R26   , R24   , R25   
            ADD     R27   , R5    , #-99  
            ADD     R28   , R5    , #-100 
            LDR     R29   , R28   , #0    
            MUL     R30   , R29   , #1    
            ADD     R31   , R27   , R30   
            STR     R26   , R31   , #0    
        L3: ADD     R32   , R5    , #-100 
            LDR     R33   , R32   , #0    
            SET     R34   , #1           
            ADD     R35   , R33   , R34   
            ADD     R36   , R5    , #-100 
            STR     R35   , R36   , #0    
            BRA     L2                     ; backedge of for-loop
        L4: NOP                           
            ADD     R37   , R5    , #-99  
            SET     R38   , #10          
            MUL     R39   , R38   , #1    
            ADD     R40   , R37   , R39   
            LDR     R41   , R40   , #0    
            SET     R42   , #100         
            SUB     R43   , R41   , R42   
            NOTL    R44   , R43          
            BRz     R44   , L7           ; if-then-else branch, fall thru to then-stmts
            ADD     R45   , R5    , #-99  
            SET     R46   , #9           
            MUL     R47   , R46   , #1    
            ADD     R48   , R45   , R47   
            LDR     R49   , R48   , #0    
            SET     R50   , #100         
            SUB     R51   , R49   , R50   
            NOTL    R52   , R51          
            BRz     R52   , L9           ; if-then-else branch, fall thru to then-stmts
            SET     R53   , #0           
            ADD     R54   , R5    , #-101 
            LDR     R55   , R54   , #0    
            STR     R53   , R55   , #0    
            BRA     L8                    
        L9: SET     R56   , #1            ; else label
            ADD     R57   , R5    , #-101 
            LDR     R58   , R57   , #0    
            STR     R56   , R58   , #0    
        L8: NOP                            ; if-then-else label
            BRA     L6                    
        L7: NOP                            ; else label
        L6: NOP                            ; if-then-else label
            ADD     R59   , R5    , #-100 
            LDR     R60   , R59   , #0    
            STR     R60   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #103   ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller