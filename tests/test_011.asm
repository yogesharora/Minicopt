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
            SET     R8    , #0           
            ADD     R9    , R5    , #0    
            STR     R8    , R9    , #0    
        L2: ADD     R10   , R5    , #0     ; enter while loop
            LDR     R11   , R10   , #0    
            SET     R12   , #5           
            SUB     R13   , R11   , R12   
            BRn     R13   , L4          
            SET     R13   , #0           
        L4: NOP                            ; less-than label
            BRz     R13   , L3          
            ADD     R14   , R5    , #0    
            LDR     R15   , R14   , #0    
            ADD     R16   , R5    , #0    
            LDR     R17   , R16   , #0    
            SET     R18   , #1           
            ADD     R19   , R17   , R18   
            MUL     R20   , R15   , R19   
            ADD     R21   , R5    , #-5   
            ADD     R22   , R5    , #0    
            LDR     R23   , R22   , #0    
            MUL     R24   , R23   , #1    
            ADD     R25   , R21   , R24   
            STR     R20   , R25   , #0    
            ADD     R26   , R5    , #0    
            LDR     R27   , R26   , #0    
            SET     R28   , #1           
            ADD     R29   , R27   , R28   
            ADD     R30   , R5    , #0    
            STR     R29   , R30   , #0    
            BRA     L2                     ; back edge for while-loop
        L3: NOP                           
            ADD     R31   , R5    , #0    
            LDR     R32   , R31   , #0    
            SET     R33   , #1           
            ADD     R34   , R32   , R33   
            ADD     R35   , R5    , #0    
            STR     R34   , R35   , #0    
            SET     R36   , #0           
            ADD     R37   , R5    , #0    
            STR     R36   , R37   , #0    
        L5: ADD     R38   , R5    , #0     ; enter for loop
            LDR     R39   , R38   , #0    
            SET     R40   , #5           
            SUB     R41   , R39   , R40   
            BRn     R41   , L8          
            SET     R41   , #0           
        L8: NOP                            ; less-than label
            BRz     R41   , L7          
            ADD     R42   , R5    , #-10  
            ADD     R43   , R5    , #0    
            LDR     R44   , R43   , #0    
            SET     R45   , #1           
            ADD     R46   , R44   , R45   
            MUL     R47   , R46   , #1    
            ADD     R48   , R42   , R47   
            LDR     R49   , R48   , #0    
            ADD     R50   , R5    , #-10  
            ADD     R51   , R5    , #0    
            LDR     R52   , R51   , #0    
            MUL     R53   , R52   , #1    
            ADD     R54   , R50   , R53   
            STR     R49   , R54   , #0    
        L6: ADD     R55   , R5    , #0    
            LDR     R56   , R55   , #0    
            SET     R57   , #1           
            ADD     R58   , R56   , R57   
            ADD     R59   , R5    , #0    
            STR     R58   , R59   , #0    
            BRA     L5                     ; backedge of for-loop
        L7: NOP                           
            SET     R60   , #100         
            ADD     R61   , R5    , #0    
            STR     R60   , R61   , #0    
            ADD     R62   , R5    , #-10  
            SET     R63   , #0           
            MUL     R64   , R63   , #1    
            ADD     R65   , R62   , R64   
            LDR     R66   , R65   , #0    
            ADD     R0    , R66   , #0    
            OUT
            ADD     R67   , R5    , #-10  
            SET     R68   , #2           
            MUL     R69   , R68   , #1    
            ADD     R70   , R67   , R69   
            LDR     R71   , R70   , #0    
            STR     R71   , R5    , #3    
            BRA     L1                    
        L1: ADD     R6    , R6    , #11    ; remove locals from stack
            LDR     R5    , R6    , #0     ; restore caller's frame pointer
            ADD     R6    , R6    , #1    
            LDR     R7    , R6    , #0     ; restore caller's return address
            ADD     R6    , R6    , #1    
            RET                            ; return to caller
