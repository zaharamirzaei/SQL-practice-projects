SELECT Department, salary, COUNT(*) AS count
FROM employees
GROUP BY Department, salary
ORDER BY Department, salary;
