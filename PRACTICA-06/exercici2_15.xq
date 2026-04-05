let $emps := doc("Employees.xml")/employees/employee
  [lastName = "Fixter" or lastName = "King"]/@employeeNumber
let $clients := doc("Customers.xml")/customers/customer
  [salesRepEmployeeNumber = $emps]/@customerNumber
for $p in doc("Payments.xml")/payments/check
where $p/customer/@customerNumber = $clients
order by number($p/amount) descending
return concat("ID: ", data($p/@number), ", Quantitat: ", data($p/amount))