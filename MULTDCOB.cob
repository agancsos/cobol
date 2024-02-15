000001  IDENTIFICATION DIVISION.               
000002  PROGRAM-ID. MULTIDCOB.                 
000003  ENVIRONMENT DIVISION.                  
000004  DATA DIVISION.                         
000005  WORKING-STORAGE SECTION.               
000006  01 CURSOR PIC 9(10) VALUE 1.           
000007  01 WS-NAMES.                           
000008     05 WS-NAMES-ENTRIES OCCURS 10 TIMES.
000009        10 WS-NAMES-NAME  PIC A(20).     
000010        10 WS-NAMES-START PIC A(20).     
000011        10 WS-NAMES-END   PIC A(20).     
000012  PROCEDURE DIVISION.                    
000013      MOVE 'NAME1' TO WS-NAMES-NAME(1).       
000014      MOVE 'NAME2'   TO WS-NAMES-NAME(2).       
000015      MOVE 'NAME3'   TO WS-NAMES-NAME(3).       
000016      MOVE '2007-09-01' TO WS-NAMES-START(3).     
000017      MOVE '2008-02-14' TO WS-NAMES-END(3).       
000018      MOVE 'NAME4'     TO WS-NAMES-NAME(4).       
000019      MOVE 'NAME5'   TO WS-NAMES-NAME(5).       
000020      PERFORM PRINT-NAMES UNTIL CURSOR > 5.       
000021      STOP RUN.                                   
000022                                                  
000023   PRINT-NAMES.                                   
000024      DISPLAY WS-NAMES-NAME(CURSOR)               
000025      '(' WS-NAMES-START(CURSOR)                  
000026      ' - ' WS-NAMES-END(CURSOR)                  
000027      ')'.                                        
000028      ADD 1 TO CURSOR.                            

