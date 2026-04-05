count(
  for $c in doc("Customers.xml")/customers/customer
  where $c/creditLimit != "NULL"
    and $c/creditLimit > 1600
  return $c
)