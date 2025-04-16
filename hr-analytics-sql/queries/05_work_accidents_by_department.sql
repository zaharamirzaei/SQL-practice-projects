SELECT Department, COUNT(*) AS work_accidents
FROM employees
WHERE Work_accident=1
GROUP BY Department