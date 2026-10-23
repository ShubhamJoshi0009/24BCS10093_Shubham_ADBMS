SELECT DISTINCT salary
FROM Employee
WHERE salary IN (
    SELECT MAX(salary)
    FROM Employee
    WHERE salary < (SELECT MAX(salary) FROM Employee)
    UNION
    SELECT MAX(salary)
    FROM Employee
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employee
        WHERE salary < (SELECT MAX(salary) FROM Employee)
    )
);
