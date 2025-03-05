
CREATE OR REPLACE FUNCTION reverse_string (p_str IN VARCHAR2) 
RETURN VARCHAR2 
IS
    rev VARCHAR2(4000); 
    v_len NUMBER;      
BEGIN
    v_len := LENGTH(p_str);  
   
    FOR i IN REVERSE 1..v_len LOOP
        rev := rev || SUBSTR(p_str, i, 1);  
    END LOOP;

  
    RETURN rev;
END reverse_string;
/


DECLARE
    reversed_str VARCHAR2(4000);
BEGIN
   
    reversed_str := reverse_string('&user_input');
    

    DBMS_OUTPUT.PUT_LINE('The reversed string is: ' || reversed_str);
END;
/