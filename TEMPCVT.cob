000001  IDENTIFICATION DIVISION.                                        
000002  PROGRAM-ID. TEMPCONVERT.                                        
000003  ENVIRONMENT DIVISION.                                           
000004  DATA DIVISION.                                                  
000005  WORKING-STORAGE SECTION.                                        
000006  01 TEMP-IN PIC 9(4)9(3) VALUE 182.000.                          
000007  01 CF-IN   PIC A(1) VALUE 'C'.                                  
000008  01 CF-OUT  PIC A(1) VALUE 'F'.                                  
000009  01 TEMP-OUT PIC  9(4).9(3).                                     
000010  PROCEDURE DIVISION.                                             
000011      IF (CF-IN EQUAL TO 'C') THEN                                
000012         MOVE 'F' TO CF-OUT                                       
000013         COMPUTE TEMP-OUT = (TEMP-IN * (9 / 5)) + 32              
000014      ELSE                                                        
000015         MOVE 'C' TO CF-OUT                                       
000016         COMPUTE TEMP-OUT = (TEMP-IN - 32) * (5 / 9).             
000017      DISPLAY 'CONVERTED TEMP: ' TEMP-OUT ' ' CF-OUT.             
000018      STOP RUN.       
