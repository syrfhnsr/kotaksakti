
   SELECT c.CustomerId, c.CustomerName
   FROM customers AS c
   LEFT JOIN invoices AS i ON i.Customer_ID = c.CustomerId
   WHERE i.InvoicesId IS NULL