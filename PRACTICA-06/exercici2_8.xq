let $mitjana := avg(collection("CLASSICMODELS_BD")//check/amount)
for $p in doc("Payments.xml")/payments/check
where $p/amount > $mitjana
order by number($p/amount) descending
return concat("Compte: ", data($p/@number),
              ", Import: ", data($p/amount),
              ", Client: ", data($p/customer/customerName))