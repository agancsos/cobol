000001  IDENTIFICATION DIVISION.          
000002  PROGRAM-ID. HELLOWORLD.           
000003  ENVIRONMENT DIVISION.             
000004  DATA DIVISION.                    
000005  WORKING-STORAGE SECTION.          
000006  01 WS-CURSOR PIC 9(10) VALUE 0.   
000007  01 WS-MAXNUM PIC 9(10) VALUE 10.  
000008  01 R1        PIC 9(5).            
000009  01 T1        PIC 9(5).            
000010  01 R2        PIC 9(5).            
000011  01 T2        PIC 9(5).            
000012  PROCEDURE DIVISION.               
000013  MAIN.                                                
000014     PERFORM PRIMES UNTIL WS-CURSOR > WS-MAXNUM.       
000015     STOP RUN.                                         
000016                                                       
000017  PRIMES.                                              
000018     DIVIDE WS-CURSOR BY 2 GIVING R1 REMAINDER T1.     
000019     DIVIDE WS-CURSOR BY 3 GIVING R2 REMAINDER T2.     
000020     IF WS-CURSOR IS EQUAL TO 0 THEN                   
000021        DISPLAY '0 IS NOT PRIME!'                      
000022     ELSE                                              
000023        IF T1 IS EQUAL TO 0 AND T2 IS EQUAL TO 0 THEN  
000024           DISPLAY WS-CURSOR ' IS PRIME!'              
000025        ELSE                                           
000026           IF T1 IS EQUAL TO 0 THEN                    
000027              DISPLAY WS-CURSOR ' IS NOT PRIME.  2'    
000028           ELSE                                     
000029              DISPLAY WS-CURSOR ' IS NOT PRIME.  3'.
000030      ADD 1 TO WS-CURSOR.                          
 
