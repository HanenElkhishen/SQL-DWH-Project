/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from CSV files to bronze tables.

Parameters:
    None. 
    This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze 
AS
BEGIN

    ---------------------- CRM: Customer Info ----------------------
    BULK INSERT bronze.crm_cust_info
    FROM 'D:\Projects for PORT\SQL Data Warehouse SQL Server-Data Engineering Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SELECT * FROM bronze.crm_cust_info;

    ---------------------- CRM: Product Info -----------------------
    BULK INSERT bronze.crm_prd_info
    FROM 'D:\Projects for PORT\SQL Data Warehouse SQL Server-Data Engineering Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SELECT * FROM bronze.crm_prd_info;

    ---------------------- CRM: Sales Details ----------------------
    BULK INSERT bronze.crm_sales_details
    FROM 'D:\Projects for PORT\SQL Data Warehouse SQL Server-Data Engineering Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SELECT * FROM bronze.crm_sales_details;

    ---------------------- ERP: Customer AZ12 ----------------------
    BULK INSERT bronze.erp_cust_az12
    FROM 'D:\Projects for PORT\SQL Data Warehouse SQL Server-Data Engineering Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SELECT * FROM bronze.erp_cust_az12;

    ---------------------- ERP: Location A101 ----------------------
    BULK INSERT bronze.erp_loc_a101
    FROM 'D:\Projects for PORT\SQL Data Warehouse SQL Server-Data Engineering Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SELECT * FROM bronze.erp_loc_a101;

    ---------------------- ERP: PX Category G1V2 -------------------
    BULK INSERT bronze.erp_px_cat_g1v2
    FROM 'D:\Projects for PORT\SQL Data Warehouse SQL Server-Data Engineering Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SELECT * FROM bronze.erp_px_cat_g1v2;

END;
