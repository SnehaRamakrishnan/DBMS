SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER after_employee_delete
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO backup_employees (employee_id, employee_name, department, salary)
    VALUES (:OLD.employeeid, :OLD.name, NULL, :OLD.salary);
END;
/ 

DECLARE 
    num NUMBER := &num; 
BEGIN
    DELETE FROM employees WHERE employeeid = num;
    COMMIT; 
END;
/
SELECT * FROM employees;
