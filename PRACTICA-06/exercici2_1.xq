for $c in doc("Customers.xml")/customers/customer
where $c/creditLimit != "NULL" 
  and $c/creditLimit >= 1160 
  and $c/creditLimit <= 1165
return data($c/customerName)