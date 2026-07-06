-- ============================================
-- SQL Practice - Day 2
-- Questions 1 to 40
-- Author: Soniya Sharma
-- ============================================

-- Q1. Display all employees.
SELECT *
FROM employees;

-- Q2. Show only Name and Salary.
SELECT name, salary
FROM employees;

-- Q3. Display only Department column.
SELECT department
FROM employees;

-- Q4. Show employees whose salary is greater than 50000.
SELECT *
FROM employees
WHERE salary > 50000;

-- Q5. Show employees whose age is less than 30.
SELECT *
FROM employees
WHERE age < 30;

-- Q6. Find employees from Delhi.
SELECT *
FROM employees
WHERE city = 'Delhi';

-- Q7. Show employees whose department is IT.
SELECT *
FROM employees
WHERE department = 'IT';

-- Q8. Show employees whose salary is greater than or equal to 60000.
SELECT *
FROM employees
WHERE salary >= 60000;

-- Q9. Show employees whose salary is less than 45000.
SELECT *
FROM employees
WHERE salary < 45000;

-- Q10. Show employees whose age is not equal to 30.
SELECT *
FROM employees
WHERE age <> 30;

-- Q11. Employees from Delhi whose salary is more than 40000.
SELECT *
FROM employees
WHERE city = 'Delhi'
AND salary > 40000;

-- Q12. Employees in IT department whose age is below 28.
SELECT *
FROM employees
WHERE department = 'IT'
AND age < 28;

-- Q13. Employees from Delhi OR Mumbai.
SELECT *
FROM employees
WHERE city = 'Delhi'
OR city = 'Mumbai';

-- Q14. Employees whose department is HR OR Finance.
SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Finance';

-- Q15. Employees NOT from Delhi.
SELECT *
FROM employees
WHERE NOT city = 'Delhi';

-- Q16. Employees NOT in IT department.
SELECT *
FROM employees
WHERE NOT department = 'IT';

-- Q17. Employees whose salary is between 40000 and 60000.
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- Q18. Employees whose age is between 25 and 30.
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 30;

-- Q19. Employees from Delhi, Pune, and Jaipur.
SELECT *
FROM employees
WHERE city IN ('Delhi', 'Pune', 'Jaipur');

-- Q20. Employees in HR, IT, and Sales departments.
SELECT *
FROM employees
WHERE department IN ('HR', 'IT', 'Sales');

-- Q21. Employees whose names start with 'A'.
SELECT *
FROM employees
WHERE name LIKE 'A%';

-- Q22. Employees whose names end with 'a'.
SELECT *
FROM employees
WHERE name LIKE '%a';

-- Q23. Employees whose names contain 'h'.
SELECT *
FROM employees
WHERE name LIKE '%h%';

-- Q24. Display employees sorted by salary (lowest to highest).
SELECT *
FROM employees
ORDER BY salary ASC;

-- Q25. Display employees sorted by salary (highest to lowest).
SELECT *
FROM employees
ORDER BY salary DESC;

-- Q26. Sort employees by age.
SELECT *
FROM employees
ORDER BY age ASC;

-- Q27. Sort employees by Name alphabetically.
SELECT *
FROM employees
ORDER BY name ASC;

-- Q28. Show first 5 employees.
SELECT *
FROM employees
LIMIT 5;

-- Q29. Show top 3 highest-paid employees.
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Q30. Show the youngest employee.
SELECT *
FROM employees
ORDER BY age ASC
LIMIT 1;

-- ============================================
-- Bonus Questions
-- ============================================

-- Q31. Find employees from Delhi whose salary is greater than 35000.
SELECT *
FROM employees
WHERE city = 'Delhi'
AND salary > 35000;

-- Q32. Find employees in IT department earning more than 70000.
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 70000;

-- Q33. Find employees whose salary is between 50000 and 80000
-- and who live in Delhi.
SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000
AND city = 'Delhi';

-- Q34. Display employees from Mumbai or Pune sorted by salary.
SELECT *
FROM employees
WHERE city IN ('Mumbai', 'Pune')
ORDER BY salary ASC;

-- Q35. Show the oldest employee.
SELECT *
FROM employees
ORDER BY age DESC
LIMIT 1;
-- ============================================
-- SQL Practice - Day 2
-- Challenge Questions
-- Author: Soniya Sharma
-- ============================================

-- Q36. Find the employee with the second-highest salary.
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

-- Q37. Find employees whose names have exactly 5 letters.
SELECT *
FROM employees
WHERE LENGTH(name) = 5;

-- Q38. Find employees whose city is not Delhi or Mumbai.
SELECT *
FROM employees
WHERE city NOT IN ('Delhi', 'Mumbai');

-- Q39. Display only unique departments.
SELECT DISTINCT department
FROM employees;

-- Q40. Count the total number of employees.
SELECT COUNT(*) AS total_employees
FROM employees;
