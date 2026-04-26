/*
===============================================================================
Create Database and Schemas
===============================================================================

Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

-- Drop and recreate the 'Retail_DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Retail_DataWarehouse')
BEGIN
    ALTER DATABASE Retail_DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Retail_DataWarehouse;
END;
GO


create database Retail_DataWarehouse;

use Retail_DataWarehouse;

create schema bronze;
go
create schema silver;
go
create schema gold;
go
