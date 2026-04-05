let $mitjana := avg(doc("Payments.xml")/payments/check/amount)
for $p in doc("Payments.xml")/payments/check
where $p/amount > $mitjana
order by data($p/@number) ascending
return data($p/@number)