let $nl := "&#10;"
let $emp := count(collection("CLASSICMODELS_BD")/employees/employee)
let $cli := count(collection("CLASSICMODELS_BD")/customers/customer)
let $xec := count(collection("CLASSICMODELS_BD")/payments/check)
return concat("Número d'empleats: ", $emp, $nl,
              "Número de clients: ", $cli, $nl,
              "Número de xecs: ", $xec)