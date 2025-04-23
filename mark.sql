SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE total_marks IS
BEGIN
  
    UPDATE sessional_exam
    SET total_marks = sub1 + sub2 + sub3;

   
    COMMIT;


    DBMS_OUTPUT.PUT_LINE('Total marks for all students have been updated successfully.');
END;
/
BEGIN
    total_marks;  
    DBMS_OUTPUT.PUT_LINE('Total marks calculated and stored for all students.');
END;
/
