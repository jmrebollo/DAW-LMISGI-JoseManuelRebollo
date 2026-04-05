SELECT ExtractValue(document, 'count(//employee[office/Territory="EMEA"])') 
FROM employees_xml;