000001  IDENTIFICATION DIVISION.                     
000002  PROGRAM-ID. SUBMAIN.                         
000003  ENVIRONMENT DIVISION.                        
000004  DATA DIVISION.                               
000005  WORKING-STORAGE SECTION.                     
000006  01 WS-INPUT1 PIC A(30) VALUE 'ABEL GANCSOS'. 
000007  PROCEDURE DIVISION.                          
000008     CALL 'SUBSUB' USING WS-INPUT1.           
000009     STOP RUN.                                
