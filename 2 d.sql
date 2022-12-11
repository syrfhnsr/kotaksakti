SELECT invoice_lines.InvLinesDesc, customers.CustomerName
FROM invoice_lines
JOIN invoices 
ON invoice_lines.Invoice_ID = invoices.InvoicesId
JOIN customers
ON customers.CustomerId = invoices.Customer_ID 
ORDER BY InvLinesDesc;