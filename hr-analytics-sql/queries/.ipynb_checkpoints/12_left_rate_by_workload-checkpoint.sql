SELECT 
    number_project,
    CASE 
        WHEN average_montly_hours <= 150 THEN '0-150'
        WHEN average_montly_hours <= 200 THEN '151-200'
        WHEN average_montly_hours <= 250 THEN '201-250'
        ELSE '251+' 
    END AS hours_range,
    
    COUNT(*) AS total_employees,
    
    SUM(CASE WHEN left = 1 THEN 1 ELSE 0 END) AS employees_left,
    
    ROUND(100.0 * SUM(CASE WHEN left = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS left_percentage

FROM employees

GROUP BY number_project, hours_range

ORDER BY left_percentage DESC;
