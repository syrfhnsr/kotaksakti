 CREATE TABLE customers (CustomerId INT PRIMARY KEY IDENTITY(1,1) ,CustomerName VARCHAR(100) 
,CustomerEmail VARCHAR(100) ,CustomerTel VARCHAR(15) , created_at DATETIME, updated_at DATETIME)
GO


INSERT INTO [dbo].[customers]([CustomerName],[CustomerEmail],[CustomerTel],[created_at],[updated_at]) VALUES 
(N'Irfan Bakti',N'irfan88@example.com',N'+0123456789', N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[customers]([CustomerName],[CustomerEmail],[CustomerTel],[created_at],[updated_at]) VALUES 
(N'Jack Smmith',N'jack.smmith@acme.io',N'+0132456781', N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[customers]([CustomerName],[CustomerTel],[created_at],[updated_at]) VALUES 
(N'Nazir',N'+01185434012', N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[customers]([CustomerName],[CustomerEmail],[CustomerTel],[created_at],[updated_at]) VALUES 
(N'Faiz Ma',N'faiz.ma@jholow.cn',N'+019772002',N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[customers]([CustomerName],[CustomerEmail],[CustomerTel],[created_at],[updated_at]) VALUES 
(N'Isham Rais',N'isham@pmo.gov.my',N'+0135482020', N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[customers]([CustomerName],[CustomerEmail],[created_at],[updated_at]) VALUES 
(N'Shanon Teoh',N'shahnon.teoh@st.com.sg', N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
GO

 CREATE TABLE invoices (InvoicesId INT PRIMARY KEY IDENTITY(1,1) ,InvoicesNumber INT 
,InvoicesSub_Total DECIMAL(5,2) ,InvoicesTax_Total DECIMAL(5,2) , InvoicesTotal DECIMAL(5,2), Customer_ID INT, Inv_created_at DATETIME, Inv_updated_at DATETIME)
GO


INSERT INTO [dbo].[invoices]([InvoicesNumber],[InvoicesSub_Total],[InvoicesTax_Total],[InvoicesTotal],[Customer_ID],[Inv_created_at],[Inv_updated_at]) VALUES 
(20190001,30.00,0.00,30.00,1, N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[invoices]([InvoicesNumber],[InvoicesSub_Total],[InvoicesTax_Total],[InvoicesTotal],[Customer_ID],[Inv_created_at],[Inv_updated_at]) VALUES 
(20190002,150.00,0.00,150.00,2, N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[invoices]([InvoicesNumber],[InvoicesSub_Total],[InvoicesTax_Total],[InvoicesTotal],[Customer_ID],[Inv_created_at],[Inv_updated_at]) VALUES 
(20190003,30.00,0.00,30.00,2, N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[invoices]([InvoicesNumber],[InvoicesSub_Total],[InvoicesTax_Total],[InvoicesTotal],[Customer_ID],[Inv_created_at],[Inv_updated_at]) VALUES 
(20190004,55.00,0.00,55.00,3, N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
INSERT INTO [dbo].[invoices]([InvoicesNumber],[InvoicesSub_Total],[InvoicesTax_Total],[InvoicesTotal],[Customer_ID],[Inv_created_at],[Inv_updated_at]) VALUES 
(20190005,450.00,0.00,0.00,6, N'2019-08-07 08:13:21', N'2019-08-07 08:13:2')
GO

 CREATE TABLE invoice_lines (InvLinesId INT PRIMARY KEY IDENTITY(1,1) ,InvLinesDesc VARCHAR(100) 
,InvLinesUnit_Price DECIMAL(5,2) ,InvLinesQuantity INT , InvLinesSub_Total DECIMAL(5,2), InvLinesTax_Total DECIMAL(5,2), InvLinesTotal DECIMAL(5,2), Tax_ID INT, Sku_ID INT, Invoice_ID INT)
GO

INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #1',30.00,1,30.00,0.00,30.00,1,1)
INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #2',25.00,4,100.00,0.00,100.00,2,2)
INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #3',50.00,1,50.00,0.00,50.00,3,2)
INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #1',30.00,1,30.00,0.00,30.00,1,3)
INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #1',30.00,1,30.00,0.00,30.00,1,4)
INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #2',25.00,1,25.00,0.00,25.00,2,4)
INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #1',30.00,5,150.00,0.00,150.00,1,5)
INSERT INTO [dbo].[invoice_lines]([InvLinesDesc],[InvLinesUnit_Price],[InvLinesQuantity],[InvLinesSub_Total],[InvLinesTax_Total],[InvLinesTotal],[Sku_ID],[Invoice_ID]) VALUES 
(N'Book #3',50.00,6,300.00,0.00,300.00,3,5)
GO