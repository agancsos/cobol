000001  IDENTIFICATION DIVISION.        
000002  PROGRAM-ID. HELLOWORLD.         
000003  ENVIRONMENT DIVISION.           
000004  DATA DIVISION.                  
000005  WORKING-STORAGE SECTION.        
000006  01 WS-TABLE.                    
000007     05 LIST OCCURS 5 TIMES.      
000008     10 LIST-VALUES PIC 9(3)V9(3).
000009  01 MINV   PIC 9(3)V9(3) VALUE 0.
000010  01 MAXV   PIC 9(3)V9(3) VALUE 0.
000011  01 I      PIC 9(3)      VALUE 1.
000012  PROCEDURE DIVISION.
000013  MAIN.                                                  
000014     MOVE 5 TO LIST-VALUES(1).                           
000015     MOVE 3 TO LIST-VALUES(2).                           
000016     MOVE 2 TO LIST-VALUES(3).                           
000017     MOVE 7 TO LIST-VALUES(4).                           
000018     MOVE 1 TO LIST-VALUES(5).                           
000019     PERFORM MINMAX UNTIL I > 5.                         
000020     DISPLAY 'MIN: ' MINV.                               
000021     DISPLAY 'MAX: ' MAXV.                               
000022     STOP RUN.                                           
000023                                                         
000024  MINMAX.                                                
000025     IF LIST-VALUES(I) > MAXV THEN                       
000026        MOVE LIST-VALUES(I) TO MAXV.                     
000027     IF MINV IS EQUAL TO 0 OR LIST-VALUES(I) < MINV THEN 
000028        MOVE LIST-VALUES(I) TO MINV.                     
000029     ADD 1 TO I.                                         

