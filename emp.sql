sSET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE count_emp (dept_id IN NUMBER) IS
    emp_count NUMBER;
BEGIN
    -- Count the number of employees in the specified department
    SELECT COUNT(*)
    INTO emp_count
    FROM employee
    WHERE department_id = dept_id;

    -- Output the result using DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE('Number of employees in department ' || dept_id || ' is ' || emp_count);
END;
/

-- Anonymous block to execute the procedure
DECLARE
    dept_id NUMBER;
BEGIN
    -- Accept department ID input and call the procedure
    dept_id := &dept_id; -- Prompts the user for dept_id input
    count_emp(dept_id); -- Call the count_emp procedure
END;
/

/
