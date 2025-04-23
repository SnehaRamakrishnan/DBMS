sSET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE count_emp (dept_id IN NUMBER) IS
    emp_count NUMBER;
BEGIN
   
    SELECT COUNT(*)
    INTO emp_count
    FROM employee
    WHERE department_id = dept_id;


    DBMS_OUTPUT.PUT_LINE('Number of employees in department ' || dept_id || ' is ' || emp_count);
END;
/


DECLARE
    dept_id NUMBER;
BEGIN
  
    dept_id := &dept_id; 
    count_emp(dept_id); 
END;
/

/
