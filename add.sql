SET SERVEROUTPUT ON;  

DECLARE
    num1 NUMBER := &num1;
    num2 NUMBER := &num2;  
    sum_result NUMBER; 
BEGIN
   
    sum_result := num1 + num2;

    DBMS_OUTPUT.PUT_LINE('The sum of ' || num1 || ' and ' || num2 || ' is: ' || sum_result);
END;
/
