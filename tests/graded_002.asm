            .ORIG x2000
            JSR     main                  
            HALT
      main: ADD     R6    , R6    , #-1    ; reserve space for the return value
            ADD     R6    , R6    , #-1   
            STR     R7    , R6    , #0     ; save caller's return address
            ADD     R6    , R6    , #-1   
            STR     R5    , R6    , #0     ; save caller's frame pointer
            ADD     R5    , R6    , #-1    ; set up frame pointer
            ADD     R6    , R6    , #-13   ; decrement stack pointer beyond frame
            IN
            ADD     R8    , R0    , #0    
            ADD     R9    , R5    , #-1   
            STR     R8    , R9    , #0    
            SET     R10   , #0           
            ADD     R11   , R5    , #-2   
            STR     R10   , R11   , #0    
            SET     R12   , #0           
            ADD     R13   , R5    , #0    
            STR     R12   , R13   , #0    
        L2: ADD     R14   , R5    , #0     ; enter for loop
            LDR     R15   , R14   , #0    
            SET     R16   , #10          
            SUB     R17   , R15   , R16   
            BRn     R17   , L5          
            SET     R17   , #0           
        L5: NOP                            ; less-than label
            BRz     R17   , L4          
            SET     R18   , #10          
            ADD     R19   , R5    , #-12  
            SET     R20   , #0           
            MUL     R21   , R20   , #1    
            ADD     R22   , R19   , R21   
            STR     R18   , R22   , #0    
            ADD     R23   , R5    , #-12  
            SET     R24   , #0           
            MUL     R25   , R24   , #1    
            ADD     R26   , R23   , R25   
            LDR     R27   , R26   , #0    
            ADD     R0    , R27   , #0    
            OUT
        L3: ADD     R28   , R5    , #0    
            LDR     R29   , R28   , #0    
            SET     R30   , #1           
            ADD     R31   , R29   , R30   
            ADD     R32   , R5    , #0    
            STR     R31   , R32   , #0    
            BRA     L2                     ; backedge of for-loop
        L4: NOP                           
            SET     R33   , #0           
            ADD     R34   , R5    , #0    
            STR     R33   , R34   , #0    
        L6: ADD     R35   , R5    , #0     ; enter for loop
            LDR     R36   , R35   , #0    
            ADD     R37   , R5    , #-1   
            LDR     R38   , R37   , #0    
            SUB     R39   , R36   , R38   
            BRn     R39   , L9          
            SET     R39   , #0           
        L9: NOP                            ; less-than label
            BRz     R39   , L8          
            ADD     R40   , R5    , #-1   
            LDR     R41   , R40   , #0    
            ADD     R42   , R5    , #-12  
            ADD     R43   , R5    , #0    
            LDR     R44   , R43   , #0    
            MUL     R45   , R44   , #1    
            ADD     R46   , R42   , R45   
            LDR     R47   , R46   , #0    
            ADD     R48   , R41   , R47   
            ADD     R49   , R5    , #-12  
            ADD     R50   , R5    , #0    
            LDR     R51   , R50   , #0    
            MUL     R52   , R51   , #1    
            ADD     R53   , R49   , R52   
            STR     R48   , R53   , #0    
            ADD     R54   , R5    , #-12  
            ADD     R55   , R5    , #0    
            LDR     R56   , R55   , #0    
            MUL     R57   , R56   , #1    
            ADD     R58   , R54   , R57   
            LDR     R59   , R58   , #0    
            ADD     R0    , R59   , #0    
            OUT
        L7: ADD     R60   , R5    , #0    
            LDR     R61   , R60   , #0    
            SET     R62   , #1           
            ADD     R63   , R61   , R62   
            ADD     R64   , R5    , #0    
            STR     R63   , R64   , #0    
            BRA     L6                     ; backedge of for-loop
        L8: NOP                           
            SET     R65   , #0           
            ADD     R66   , R5    , #0    
            STR     R65   , R66   , #0    
       L10: ADD     R67   , R5    , #0     ; enter for loop
            LDR     R68   , R67   , #0    
            ADD     R69   , R5    , #-1   
            LDR     R70   , R69   , #0    
            SUB     R71   , R68   , R70   
            BRn     R71   , L13         
            SET     R71   , #0           
       L13: NOP                            ; less-than label
            BRz     R71   , L12         
            ADD     R72   , R5    , #-2   
            LDR     R73   , R72   , #0    
            ADD     R74   , R5    , #-12  
            ADD     R75   , R5    , #0    
            LDR     R76   , R75   , #0    
            MUL     R77   , R76   , #1    
            ADD     R78   , R74   , R77   
            LDR     R79   , R78   , #0    
            ADD     R80   , R73   , R79   
            ADD     R81   , R5    , #-2   
            STR     R80   , R81   , #0    
            ADD     R82   , R5    , #-2   
            LDR     R83   , R82   , #0    
            ADD     R0    , R83   , #0    
            OUT
       L11: ADD     R84   , R5    , #0    
            LDR     R85   , R84   , #0    
            SET     R86   , #1           
            ADD     R87   , R85   , R86   
            ADD     R88   , R5    , #0    
            STR     R87   , R88   , #0    
            BRA     L10                    ; backedge of for-loop
       L12: NOP                           
            ADD     R89   , R5    , #-2   
            LDR     R90   , R89   , #0    
            ADD     R0    , R90   , #0    
            OUT
            SET     R91   , #0           
            STR     R91   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #13    ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
