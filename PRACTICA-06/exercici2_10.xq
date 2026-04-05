for $e in doc("Employees.xml")/employees/employee
where $e/lastName = "Patterson"
return $e/@employeeNumber