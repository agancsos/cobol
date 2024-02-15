000001  IDENTIFICATION DIVISION.                    
000002  PROGRAM-ID. FOOBAR.                     
000003  ENVIRONMENT DIVISION.                       
000004  DATA DIVISION.                              
000005  WORKING-STORAGE SECTION.                    
000006  01 MAX-CHECKS PIC 9(2) VALUE 15.            
000007  01 COUNT      PIC 9(2) VALUE 1.             
000008  01 R          PIC 9(5).                     
000009  01 T          PIC 9(5).                     
000010  PROCEDURE DIVISION.                         
000011  MAIN.                                       
000012     PERFORM FOOBAR UNTIL COUNT > MAX-CHECKS. 
000013     STOP RUN.                                           
000014                                                         
000015  FOOBAR.                                                
000016     DIVIDE COUNT BY 2 GIVING R REMAINDER T.             
000017     IF T IS EQUAL TO 0 THEN                             
000018         DISPLAY COUNT ' : FOO'                          
000019     ELSE                                                
000020         DIVIDE COUNT BY 3 GIVING R REMAINDER T          
000021         IF T IS EQUAL TO 0 THEN                         
000022             DISPLAY COUNT ' : BAR'                      
000023         ELSE                                            
000024             DISPLAY COUNT ' : FOOBAR'.                  
000025     ADD 1 TO COUNT.                                     
000026                               

