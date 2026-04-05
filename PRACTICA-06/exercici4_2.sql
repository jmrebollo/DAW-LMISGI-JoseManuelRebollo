SELECT JSON_EXTRACT(data, '$.firstName') AS firstName,
       JSON_EXTRACT(data, '$.lastName') AS lastName,
       JSON_EXTRACT(data, '$.extension') AS extension
FROM employees
WHERE JSON_EXTRACT(data, '$.extension') LIKE '%23%';