use datawarehouse

-- CREATION of Tables in BRONZE Layer
if OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info ;
create table bronze.crm_cust_info(
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_material_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_date DATE
);


if OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info ;
create table bronze.crm_prd_info(
	prd_id int,
	prd_key nvarchar(50),
	prd_nm nvarchar(50),
	prd_cost int,
	prd_line nvarchar(50),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
);


if OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details ;
create table bronze.crm_sales_details(
	sls_ord_num nvarchar(50),
	sls_prd_key nvarchar(50),
	sls_cust_id int,
	sls_order_dt int,
	sls_ship_dt int,
	sls_due_dt int,
	sls_sales int,
	sls_qunatity int,
	sls_price int
);


if OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101 ;
create table bronze.erp_loc_a101(
	cid nvarchar(50),
	cntry nvarchar(50)
);


if OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12 ;
create table bronze.erp_cust_az12(
	cid nvarchar(50),
	bdate Date,
	gen nvarchar(50)
);


if OBJECT_ID('bronze.erp_px_cat_glv2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_glv2 ;
create table bronze.erp_px_cat_glv2(
	id nvarchar(50),
	cat nvarchar(50),
	subcat nvarchar(50),
	maintenance nvarchar(50)
);
