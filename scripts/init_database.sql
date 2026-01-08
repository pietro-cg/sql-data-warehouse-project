/****************************************************************************************
Create Database and Schemas (Medallion Architecture)

 Purpose:
 This script is responsible for initializing the Data Warehouse environment in
 Microsoft SQL Server. It performs the following actions:
   - Drops the existing 'DataWarehouse' database (if it exists)
   - Recreates the 'DataWarehouse' database from scratch
   - Creates the core schemas following the Medallion Architecture pattern:
       • bronze  – raw / ingestion layer
       • silver  – cleansed and standardized layer
       • gold    – analytical and business-ready layer

 This script is intended to be used during initial setup or full environment reset
 scenarios in development or learning environments.

 WARNING:
 ⚠️  THIS SCRIPT PERMANENTLY DELETES THE ENTIRE 'DataWarehouse' DATABASE.
     All existing data, objects, and configurations will be lost.

     - Ensure you have backups before execution.

****************************************************************************************/

USE MASTER;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
