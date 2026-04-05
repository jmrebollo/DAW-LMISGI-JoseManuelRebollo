SELECT data->>'$.employeeNumber' AS employee_id,
       data->>'$.lastName' AS lastName
FROM employees;