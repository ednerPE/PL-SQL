set serveroutput on 
DECLARE
    x   CONSTANT NUMBER := 10;
    y   CONSTANT NUMBER := 20;
    c   NUMBER NOT NULL:= 0;
BEGIN 
c := x + y; 
        DBMS_OUTPUT.put_line('el resultado de la suma es de ' || c);                  
                                        
        end;