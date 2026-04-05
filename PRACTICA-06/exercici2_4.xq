for $e in doc("Employees.xml")/employees/employee
order by number($e/@employeeNumber) ascending
return concat("Nom:", $e/firstName, " ", $e/lastName,
              ", Numero d'empleat:", data($e/@employeeNumber),
              ", Oficina assignada:", data($e/office/City))