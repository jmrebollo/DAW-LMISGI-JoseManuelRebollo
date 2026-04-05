let $clients := doc("Customers.xml")/customers/customer
  [contact/contactLastName = "King" or contact/contactLastName = "Schmitt"]/@customerNumber
for $p in doc("Payments.xml")/payments/check
where $p/customer/@customerNumber = $clients
order by number($p/amount) descending
return $p/amount