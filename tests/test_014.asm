            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-1    ; decrement stack pointer beyond frame
            SET     R8    , #0           
            ADD     R9    , R5    , #0    
            STR     R8    , R9    , #0    
            SET     R10   , #0           
            ADD     R11   , R4    , #15   
            STR     R10   , R11   , #0    
            SET     R12   , #0           
            ADD     R0    , R12   , #0    
            OUT
            ADD     R13   , R4    , #15   
            ADD     R14   , R4    , #13   
            STR     R13   , R14   , #0    
            SET     R15   , #0           
            ADD     R16   , R4    , #2    
            STR     R15   , R16   , #0    
        L2: ADD     R17   , R4    , #2     ; enter for loop
            LDR     R18   , R17   , #0    
            SET     R19   , #10          
            SUB     R20   , R18   , R19   
            BRn     R20   , L5          
            SET     R20   , #0           
        L5: NOP                            ; less-than label
            BRz     R20   , L4          
            ADD     R21   , R4    , #2    
            LDR     R22   , R21   , #0    
            SET     R23   , #3           
            SUB     R24   , R22   , R23   
            NOTL    R25   , R24          
            BRz     R25   , L7           ; if-then-else branch, fall thru to then-stmts
            BRA     L3                    
            BRA     L6                    
        L7: NOP                            ; else label
        L6: NOP                            ; if-then-else label
            ADD     R26   , R4    , #2    
            LDR     R27   , R26   , #0    
            SET     R28   , #7           
            SUB     R29   , R27   , R28   
            NOTL    R30   , R29          
            ADD     R31   , R4    , #2    
            LDR     R32   , R31   , #0    
            SET     R33   , #8           
            SUB     R34   , R32   , R33   
            NOTL    R35   , R34          
            ADD     R36   , R4    , #2    
            LDR     R37   , R36   , #0    
            SET     R38   , #9           
            SUB     R39   , R37   , R38   
            NOTL    R40   , R39          
            ANDL    R41   , R35   , R40   
            ORL     R42   , R30   , R41   
            BRz     R42   , L9           ; if-then-else branch, fall thru to then-stmts
            BRA     L4                    
            BRA     L8                    
        L9: NOP                            ; else label
        L8: NOP                            ; if-then-else label
            ADD     R43   , R4    , #13   
            LDR     R44   , R43   , #0    
            LDR     R45   , R44   , #0    
            ADD     R46   , R4    , #15   
            LDR     R47   , R46   , #0    
            MUL     R48   , R45   , R47   
            ADD     R49   , R4    , #3    
            ADD     R50   , R4    , #2    
            LDR     R51   , R50   , #0    
            MUL     R52   , R51   , #1    
            ADD     R53   , R49   , R52   
            STR     R48   , R53   , #0    
            ADD     R54   , R4    , #13   
            LDR     R55   , R54   , #0    
            LDR     R56   , R55   , #0    
            SET     R57   , #1           
            ADD     R58   , R56   , R57   
            ADD     R59   , R4    , #13   
            LDR     R60   , R59   , #0    
            STR     R58   , R60   , #0    
            ADD     R61   , R4    , #2    
            LDR     R62   , R61   , #0    
            ADD     R63   , R5    , #0    
            STR     R62   , R63   , #0    
        L3: ADD     R64   , R4    , #2    
            LDR     R65   , R64   , #0    
            SET     R66   , #1           
            ADD     R67   , R65   , R66   
            ADD     R68   , R4    , #2    
            STR     R67   , R68   , #0    
            BRA     L2                     ; backedge of for-loop
        L4: NOP                           
            ADD     R69   , R4    , #15   
            ADD     R70   , R4    , #14   
            STR     R69   , R70   , #0    
       L10: ADD     R71   , R4    , #15    ; enter while loop
            LDR     R72   , R71   , #0    
            SET     R73   , #10          
            SUB     R74   , R72   , R73   
            BRn     R74   , L12         
            SET     R74   , #0           
       L12: NOP                            ; less-than label
            BRz     R74   , L11         
            ADD     R75   , R4    , #2    
            LDR     R76   , R75   , #0    
            SET     R77   , #1           
            SUB     R78   , R76   , R77   
            ADD     R79   , R4    , #2    
            STR     R78   , R79   , #0    
            ADD     R80   , R4    , #14   
            LDR     R81   , R80   , #0    
            LDR     R82   , R81   , #0    
            SET     R83   , #7           
            SUB     R84   , R82   , R83   
            NOTL    R85   , R84          
            ADD     R86   , R4    , #14   
            LDR     R87   , R86   , #0    
            LDR     R88   , R87   , #0    
            SET     R89   , #9           
            SUB     R90   , R88   , R89   
            NOTL    R91   , R90          
            ORL     R92   , R85   , R91   
            BRz     R92   , L14          ; if-then-else branch, fall thru to then-stmts
            ADD     R93   , R4    , #3    
            ADD     R94   , R4    , #14   
            LDR     R95   , R94   , #0    
            LDR     R96   , R95   , #0    
            MUL     R97   , R96   , #1    
            ADD     R98   , R93   , R97   
            ADD     R99   , R4    , #13   
            STR     R98   , R99   , #0    
            ADD     R100  , R4    , #3    
            ADD     R101  , R4    , #2    
            LDR     R102  , R101  , #0    
            MUL     R103  , R102  , #1    
            ADD     R104  , R100  , R103  
            LDR     R105  , R104  , #0    
            ADD     R106  , R4    , #2    
            LDR     R107  , R106  , #0    
            ADD     R108  , R105  , R107  
            NOT     R109  , R108         
            ADD     R109  , R109  , #1    
            ADD     R110  , R4    , #14   
            LDR     R111  , R110  , #0    
            LDR     R112  , R111  , #0    
            MUL     R113  , R109  , R112  
            ADD     R114  , R4    , #13   
            LDR     R115  , R114  , #0    
            STR     R113  , R115  , #0    
            ADD     R116  , R4    , #15   
            LDR     R117  , R116  , #0    
            SET     R118  , #1           
            ADD     R119  , R117  , R118  
            ADD     R120  , R4    , #15   
            STR     R119  , R120  , #0    
            BRA     L10                   
            BRA     L13                   
       L14: NOP                            ; else label
       L13: NOP                            ; if-then-else label
            ADD     R121  , R4    , #14   
            LDR     R122  , R121  , #0    
            LDR     R123  , R122  , #0    
            SET     R124  , #1           
            ADD     R125  , R123  , R124  
            ADD     R126  , R4    , #14   
            LDR     R127  , R126  , #0    
            STR     R125  , R127  , #0    
            BRA     L10                    ; back edge for while-loop
       L11: NOP                           
            ADD     R128  , R4    , #14   
            LDR     R129  , R128  , #0    
            LDR     R130  , R129  , #0    
            ADD     R0    , R130  , #0    
            OUT
            SET     R131  , #0           
            STR     R131  , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #1     ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
