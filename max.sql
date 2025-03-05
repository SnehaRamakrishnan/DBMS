set serveroutput on;
DECLARE
    num1 NUMBER;
    num2 NUMBER;
    max_num NUMBER;
BEGIN
      
    num1 := &num1;  
    num2 := &num2; 

   
    IF num1 > num2 THEN
        max_num := num1;
    ELSE
        max_num := num2;
    END IF;


    DBMS_OUTPUT.PUT_LINE('The maximum number is: ' || max_num);
END;
/