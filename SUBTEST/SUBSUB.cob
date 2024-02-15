000001  IDENTIFICATION DIVISION.                 
000002  PROGRAM-ID. SUBSUB.                      
000003  ENVIRONMENT DIVISION.                    
000004  DATA DIVISION.                           
000005     LINKAGE SECTION.                      
000006     01 PARM-BUFFER.                       
000007        05 PARM-INPUT1 PIC A(30).          
000008  PROCEDURE DIVISION USING PARM-BUFFER.    
000009  SUB-SUB.                                 
000010     DISPLAY 'HELLO WORLD ' PARM-INPUT1.  
000011  EXIT PROGRAM.                        
