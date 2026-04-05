let $nums := ("103", "112")
for $p in doc("Payments.xml")/payments/check
where $p/customer/@customerNumber = $nums
return $p/@number