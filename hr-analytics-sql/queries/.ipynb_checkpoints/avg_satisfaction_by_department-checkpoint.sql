SELECT Department, AVG(satisfaction_level) AS avg_satisfaction
FROM employees
GROUP BY Department
ORDER BY avg_satisfaction DESC;