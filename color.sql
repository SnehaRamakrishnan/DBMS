
  -- Accept input from the user
ACCEPT num NUMBER PROMPT 'Enter a number (1-5): ';

DECLARE
  num NUMBER := &num; -- Input number entered by the user
  color VARCHAR2(20);  -- Variable to store the color
BEGIN
  -- Use a CASE statement to assign color based on the input number
  CASE num
    WHEN 1 THEN
      color := 'Red';
    WHEN 2 THEN
      color := 'Blue';
    WHEN 3 THEN
      color := 'Green';
    WHEN 4 THEN
      color := 'Yellow';
    WHEN 5 THEN
      color := 'Purple';
    ELSE
      color := 'Invalid number! Please enter a number between 1 and 5.';
  END CASE;

  -- Output the color
  DBMS_OUTPUT.PUT_LINE('The color corresponding to the number ' || num || ' is ' || color);
END;
/