for $p in doc("Payments.xml")/payments/check
where $p/customer/@customerNumber =
  doc("Customers.xml")/customers/customer[customerName = "Atelier graphique"]/@customerNumber
return $p/@number