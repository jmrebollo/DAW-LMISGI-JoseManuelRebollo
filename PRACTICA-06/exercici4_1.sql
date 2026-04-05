SELECT JSON_UNQUOTE(JSON_EXTRACT(data, '$.phone')) AS phone
FROM offices;