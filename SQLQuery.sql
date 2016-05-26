SELECT CustomerId, RegistrationDateTime
FROM Customers
WHERE CustomerId IN 
(
SELECT DISTINCT CustomerId 
FROM Purchaises 
WHERE ProductName = 'молоко'
AND CustomerId NOT IN
(
SELECT CustomerId 
FROM Purchaises 
WHERE ProductName = 'сметана' AND PurchaiseDatetime >= DATEADD(MONTH, -1, GETDATE())
)
)

