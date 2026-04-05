SELECT ExtractValue(document, '//employee[reportsTo="1056"]/lastName') 
FROM employees_xml;