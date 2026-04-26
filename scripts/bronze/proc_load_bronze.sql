-- ============================================================
-- STEP 1: Create all 12 individual stored procedures
-- Run this FIRST, then run load_all_tables
-- ============================================================
-- ============================================================
-- FIX: Try each option one at a time until one works
-- ============================================================

-- 1. customers
CREATE OR ALTER PROCEDURE bronze.load_customers
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.customers';
        TRUNCATE TABLE bronze.customers;
        PRINT '>> Loading: bronze.customers';
        BULK INSERT bronze.customers
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\customers.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_customers;

-- 2. categories
CREATE OR ALTER PROCEDURE bronze.load_categories
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.categories';
        TRUNCATE TABLE bronze.categories;
        PRINT '>> Loading: bronze.categories';
        BULK INSERT bronze.categories
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\categories.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_categories;

-- 3. employees
CREATE OR ALTER PROCEDURE bronze.load_employees
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.employees';
        TRUNCATE TABLE bronze.employees;
        PRINT '>> Loading: bronze.employees';
        BULK INSERT bronze.employees
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\employees.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_employees;

-- 4. products
CREATE OR ALTER PROCEDURE bronze.load_products
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.products';
        TRUNCATE TABLE bronze.products;
        PRINT '>> Loading: bronze.products';
        BULK INSERT bronze.products
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\products.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_products;

-- 5. orders
CREATE OR ALTER PROCEDURE bronze.load_orders
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.orders';
        TRUNCATE TABLE bronze.orders;
        PRINT '>> Loading: bronze.orders';
        BULK INSERT bronze.orders
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\orders.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_orders;

-- 6. order_items
CREATE OR ALTER PROCEDURE bronze.load_order_items
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.order_items';
        TRUNCATE TABLE bronze.order_items;
        PRINT '>> Loading: bronze.order_items';
        BULK INSERT bronze.order_items
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\order_items.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_order_items;

-- 7. payments
CREATE OR ALTER PROCEDURE bronze.load_payments
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.payments';
        TRUNCATE TABLE bronze.payments;
        PRINT '>> Loading: bronze.payments';
        BULK INSERT bronze.payments
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\payments.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_payments;

-- 8. promotions
CREATE OR ALTER PROCEDURE bronze.load_promotions
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.promotions';
        TRUNCATE TABLE bronze.order_items;
        PRINT '>> Loading: bronze.promotions';
        BULK INSERT bronze.promotions
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\promotions.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_promotions;

-- 9. returns
CREATE OR ALTER PROCEDURE bronze.load_returns
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.returns';
        TRUNCATE TABLE bronze.returns;
        PRINT '>> Loading: bronze.returns';
        BULK INSERT bronze.returns
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\returns.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_returns;

-- 10. shipments
CREATE OR ALTER PROCEDURE bronze.load_shipments
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.shipments';
        TRUNCATE TABLE bronze.shipments;
        PRINT '>> Loading: bronze.shipments';
        BULK INSERT bronze.shipments
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\shipments.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_shipments;

-- 11. stores
CREATE OR ALTER PROCEDURE bronze.load_stores
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.stores';
        TRUNCATE TABLE bronze.stores;
        PRINT '>> Loading: bronze.stores';
        BULK INSERT bronze.stores
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\stores.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_stores;

-- 12. suppliers
CREATE OR ALTER PROCEDURE bronze.load_suppliers
AS
BEGIN
    DECLARE @start DATETIME = GETDATE();
    BEGIN TRY
        PRINT '>> Truncating: bronze.suppliers';
        TRUNCATE TABLE bronze.suppliers;
        PRINT '>> Loading: bronze.suppliers';
        BULK INSERT bronze.suppliers
        FROM 'D:\Power_BI\ITI\Data Modeling\final_project\RetailDataWarehouse\suppliers.csv'
        WITH (
            FIRSTROW         = 2,
            FIELDTERMINATOR  = ',',
            ROWTERMINATOR    = '0x0a',   -- Linux/hex line ending
            TABLOCK
        );
        PRINT '>> Done in ' + CAST(DATEDIFF(SECOND, @start, GETDATE()) AS NVARCHAR) + 's';
    END TRY
    BEGIN CATCH
        PRINT '>> ERROR: ' + ERROR_MESSAGE();
    END CATCH
END;
GO
EXEC bronze.load_suppliers;

-- ============================================================
-- STEP 2: Master procedure (run AFTER all 12 above exist)
-- ============================================================
CREATE OR ALTER PROCEDURE bronze.load_all_tables
AS
BEGIN
    DECLARE @total_start DATETIME = GETDATE();
    DECLARE @total_end   DATETIME;

    PRINT '========================================';
    PRINT 'START LOADING BRONZE LAYER';
    PRINT 'Start Time: ' + CAST(@total_start AS NVARCHAR);
    PRINT '========================================';

    EXEC bronze.load_customers;
    EXEC bronze.load_categories;
    EXEC bronze.load_employees;
    EXEC bronze.load_products;
    EXEC bronze.load_orders;
    EXEC bronze.load_order_items;
    EXEC bronze.load_payments;
    EXEC bronze.load_promotions;
    EXEC bronze.load_returns;
    EXEC bronze.load_shipments;
    EXEC bronze.load_stores;
    EXEC bronze.load_suppliers;

    SET @total_end = GETDATE();

    PRINT '========================================';
    PRINT 'BRONZE LAYER LOAD COMPLETE';
    PRINT 'Start Time : ' + CAST(@total_start AS NVARCHAR);
    PRINT 'End Time   : ' + CAST(@total_end   AS NVARCHAR);
    PRINT 'Total Time : ' + CAST(DATEDIFF(SECOND, @total_start, @total_end) AS NVARCHAR) + ' seconds';
    PRINT '========================================';
END;
GO

-- ============================================================
-- STEP 3: Run everything
-- ============================================================
EXEC bronze.load_all_tables;
