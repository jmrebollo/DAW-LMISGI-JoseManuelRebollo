for $p in doc("Payments.xml")/payments/check
where $p/customer/@customerNumber = "103"
return $p/@number