DECLARE 
    CURSOR emp_cursor IS SELECT employee_id, salary FROM employees; 
    V_EMP_ID employees.employee_id%TYPE; 
    V_SALARY employees.salary%TYPE; 
    SALARY_ZERO EXCEPTION; 
BEGIN 
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO V_EMP_ID, V_SALARY;
        EXIT WHEN emp_cursor%NOTFOUND;
        
        IF V_SALARY = 0 THEN
            RAISE SALARY_ZERO;
        END IF;
        
    END LOOP;
    CLOSE emp_cursor;
EXCEPTION
    WHEN SALARY_ZERO THEN
        DBMS_OUTPUT.PUT_LINE('Salary is zero. Increment not possible.');
END;
