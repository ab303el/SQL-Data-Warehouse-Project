/*
============================================================================
Create Database And Schema
============================================================================
Scripts Purpose:
    This script creates a new database names 'DataWarehouse' after checking if it already exists .
    if the dataset exists , it is dropped and recycled. additionally , the scripts sets up three schemas
    within the database : 'bronze' , 'silver' and 'gold'.
Warning:
    Running this script  will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted . proceed with caution 
    and ensure you have proper backups before running this scripts.
*/

use master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	 DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
create database DataWarehouse;
GO

use DataWarehouse;
Go

-- Create Schema
create schema bronze;
Go

create schema silver;
Go

create schema gold;
Go



