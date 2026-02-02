/*
================================================================================
Script: Silver Layer - Table Definitions (DDL)
================================================================================
Purpose:
This DDL script creates the curated tables for the Silver Layer of the
Data Warehouse. These tables contain cleansed, standardized, and enriched
data derived from the Bronze Layer.

Layer Characteristics:
- Cleaned and standardized data types
- Basic transformations applied (dates, keys, formats)
- Includes technical metadata for auditing (dwh_create_date)
- Serves as the foundation for analytical models in the Gold Layer

WARNING:
⚠️ This script DROPS and RECREATES all listed tables.
⚠️ Existing data will be permanently deleted.
⚠️ Execute only in development or controlled environments.
================================================================================
*/

-- =========================================================
-- CRM - Customer Information (Curated)
-- Cleansed and standardized customer master data
-- =========================================================
IF OBJECT_ID ('silver.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_cust_info;
CREATE TABLE silver.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE,
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);

-- =========================================================
-- CRM - Product Information (Curated)
-- Enriched product data with category mapping
-- =========================================================
IF OBJECT_ID ('silver.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_prd_info;
CREATE TABLE silver.crm_prd_info (
	prd_id INT,
    cat_id NVARCHAR(50),
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(50),
	prd_start_dt DATE,
	prd_end_dt DATE,
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);

-- =========================================================
-- CRM - Sales Details (Curated)
-- Standardized transactional sales data
-- =========================================================
IF OBJECT_ID ('silver.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details (
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt DATE,
	sls_ship_dt DATE,
	sls_due_dt DATE,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT,
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);

-- =========================================================
-- ERP - Location Reference (Curated)
-- Standardized country and location reference data
-- =========================================================
IF OBJECT_ID ('silver.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE silver.erp_loc_a101;
CREATE TABLE silver.erp_loc_a101 (
	cid NVARCHAR(50),
	cntry NVARCHAR(50),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);

-- =========================================================
-- ERP - Customer Demographics (Curated)
-- Cleaned demographic attributes from ERP
-- =========================================================
IF OBJECT_ID ('silver.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE silver.erp_cust_az12;
CREATE TABLE silver.erp_cust_az12 (
	cid NVARCHAR(50),
	bdate DATE,
	gen NVARCHAR(50),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);

-- =========================================================
-- ERP - Product Category Mapping (Curated)
-- Standardized product category hierarchy
-- =========================================================
IF OBJECT_ID ('silver.erp_px_cat_g1v2', 'U') IS NOT NULL
	DROP TABLE silver.erp_px_cat_g1v2;
CREATE TABLE silver.erp_px_cat_g1v2 (
	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintenance NVARCHAR(50),
    dwh_create_date DATETIME2 DEFAULT GETDATE()
);
