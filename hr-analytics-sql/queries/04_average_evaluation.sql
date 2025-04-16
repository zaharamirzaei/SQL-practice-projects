SELECT 
    Department, AVG(last_evaluation) AS average_evaluation
FROM employees
GROUP BY Department
