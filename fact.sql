
ACCEPT num NUMBER PROMPT 'Enter a number: ';

DECLARE
  num NUMBER := &num;      -- Input number for which factorial is to be calculated
  factorial NUMBER := 1;   -- Variable to store the result of the factorial
BEGIN
  -- Calculate factorial using a loop
  FOR i IN 1..num LOOP
    factorial := factorial * i;
  END LOOP;

  -- Output the result
  DBMS_OUTPUT.PUT_LINE('The factorial of ' || num || ' is ' || factorial);
END;
/
