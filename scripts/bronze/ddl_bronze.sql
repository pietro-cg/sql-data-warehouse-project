/*
================================================================================
Script: Bronze Layer - Table Definitions (DDL)
================================================================================
Purpose:
This DDL script is responsible for creating the raw tables (Bronze Layer)
used in the Data Warehouse. These tables store data ingested directly from
source systems (CRM and ERP) with minimal transformation, preserving the
original structure and granularity of the data.

Layer Characteristics:
- Raw / source-aligned data
- No business logic applied
- Used as the foundation for Silver and Gold layers

WARNING:
⚠️ This script DROPS and RECREATES all listed tables.
⚠️ Existing data will be permanently deleted.
⚠️ Execute only in development or controlled environments.
================================================================================
*/

-- =========================================================
-- CRM - Customer Information
-- Stores raw customer master data from the CRM system
-- =========================================================
IF OBJECT_ID ('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);

-- =========================================================
-- CRM - Product Information
-- Stores raw product master data from the CRM system
-- =========================================================
IF OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(50),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
);

-- =========================================================
-- CRM - Sales Details
-- Stores transactional sales data from the CRM system
-- =========================================================
IF OBJECT_ID ('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

-- =========================================================
-- ERP - Location Reference
-- Stores country/location reference data from ERP
-- =========================================================
IF OBJECT_ID ('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
	cid NVARCHAR(50),
	cntry NVARCHAR(50)
);

-- =========================================================
-- ERP - Customer Demographics
-- Stores demographic attributes from ERP system
-- =========================================================
IF OBJECT_ID ('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
	cid NVARCHAR(50),
	bdate DATE,
	gen NVARCHAR(50)
);

-- =========================================================
-- ERP - Product Category Mapping
-- Stores product category and subcategory hierarchy
-- =========================================================
IF OBJECT_ID ('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintenance NVARCHAR(50)
);