
WITH CTE AS 
(
  SELECT a.Customer_ID, SUM(b.InvLinesQuantity) AS Quantity
 FROM invoices AS a
 LEFT JOIN invoice_lines AS b ON b.Invoice_ID = a.InvoicesId
 GROUP BY a.Customer_ID
)


select a.customer_ID, a.Quantity
FROM CTE AS a
WHERE a.Quantity > 5
--GROUP BY a.customer_ID