Experiment 2

Name: Shubham Joshi
UID: 24BCS10093

Aim

To combine the records of two tables using the UNION operator and display the final result.

Question

Write a query using the UNION operator to stack the Arts table over the Science table and display the final combined table.

Note:

Both tables should have the same number of columns.
Corresponding columns should have compatible data types.
The UNION operator automatically removes duplicate rows from the final result.
SQL Query Used
SELECT *
FROM Arts
UNION
SELECT *
FROM Science;
Output
┌────────┬───────────┐
│ Sub_id │ Sub_Name  │
├────────┼───────────┤
│ 108    │ Physic    │
│ 109    │ Chemistry │
│ 110    │ Biology   │
│ 111    │ Economics │
│ 112    │ History   │
│ 113    │ Sociology │
└────────┴───────────┘

Well done, it's correct!

Note: The actual output will display all unique records present in the Arts and Science tables of your database.

Output Screenshot

(Insert the screenshot of the query execution here.)

Image Explanation

The screenshot shows the SQL editor with the UNION query executed successfully. The output panel displays the records from both the Arts and Science tables combined into a single result set. Since the UNION operator removes duplicate rows, only unique records are shown in the final output.

Result

The records from the Arts and Science tables were successfully combined using the UNION operator. The query returned a single table containing all unique records from both tables.
