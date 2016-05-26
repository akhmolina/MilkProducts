SELECT CustomerId, RegistrationDateTime
FROM Customers
WHERE CustomerId IN 
(
SELECT DISTINCT CustomerId 
FROM Purchaises 
WHERE ProductName = '������'
AND CustomerId NOT IN
(
SELECT CustomerId 
FROM Purchaises 
WHERE ProductName = '�������' AND PurchaiseDatetime >= DATEADD(MONTH, -1, GETDATE())
)
)

