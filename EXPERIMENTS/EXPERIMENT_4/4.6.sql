--     Find pairs of students that belong to the same department.
SELECT 
s1.St_id,
s1.St_Name,
s1.department,
s2.St_id,
s2.St_Name,
s2.department
FROM student as s1
INNER JOIN student as s2
on s1.department = s2.department
AND s1.St_id != s2.St_id;

--     Identify students who have chosen the same Course_id as their favorite. Display the St_id, St_Name, and Course_id and order it in increasing Course_id.

SELECT DISTINCT
s1.St_id,
s1.St_Name,
s1.Course_id
FROM student as s1
INNER JOIN student as s2
on s1.Course_id = s2.Course_id
and s1.St_id != s2.St_id
ORDER BY s1.Course_id;
