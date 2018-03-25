DROP DATABASE food_mart
GO
CREATE DATABASE food_mart;
GO
USE food_mart;
GO
CREATE SCHEMA inventario;
GO
USE inventario
GO

CREATE TABLE food_mart.inventario.region(
	region_id INT NULL,
	sales_city NVARCHAR(50) NULL,
	sales_state_province NVARCHAR(50) NULL,
	sales_district NVARCHAR(50) NULL,
	sales_region NVARCHAR(50) NULL,
	sales_country NVARCHAR(50) NULL,
	sales_district_id INT NULL
);

CREATE TABLE food_mart.inventario.product_class(
	product_class_id INT NULL,
	product_subcategory NVARCHAR(50) NULL,
	product_category NVARCHAR(50) NULL,
	product_department NVARCHAR(50) NULL,
	product_family NVARCHAR(150) NULL
);

CREATE TABLE food_mart.inventario.product(
	product_class_id INT NULL,
	product_id INT NULL,
	brand_name NVARCHAR(255) NULL,
	product_name NVARCHAR(255) NULL,
	SKU FLOAT NULL,
	SRP MONEY NULL,
	gross_weight REAL NULL,
	net_weight REAL NULL,
	recyclable_package BIT NULL,
	low_fat BIT NULL,
	unit_per_case SMALLINT NULL,
	shelf_width REAL NULL,
	shelf_height REAL NULL,
	shelf_depth REAL NULL,
);

CREATE TABLE food_mart.inventario.store(	
	store_id INT NULL,
	store_type NVARCHAR(255) NULL,
	region_id INT NULL,
	store_name NVARCHAR(255) NULL,
	store_number INT NULL,
	store_street_address NVARCHAR(255) NULL, 
	store_city NVARCHAR(255) NULL,
	store_state NVARCHAR(255) NULL,
	store_postal_code NVARCHAR(255) NULL,
	store_country NVARCHAR(255) NULL,
	store_manager NVARCHAR(255) NULL,
	store_phone NVARCHAR(255) NULL,
	store_fax NVARCHAR(255) NULL,
	first_opened_date DATETIME NULL,
	last_remodel_date DATETIME NULL,
	lease_sqft NVARCHAR(255) NULL,
	store_sqft FLOAT NULL,
	grocery_sqft FLOAT NULL,
	frozen_sqft FLOAT NULL,
	meat_sqft FLOAT NULL,
	coffe_bar BIT NULL,
	video_store BIT NULL,
	salad_bar BIT NULL,
	prepared_food BIT NULL,
	florist BIT NULL
);

CREATE TABLE food_mart.inventario.time_by_day(	
	time_id INT NULL,
	the_date DATETIME NULL,
	the_day NVARCHAR(255) NULL,
	the_moth NVARCHAR(255) NULL,
	the_year SMALLINT NULL,
	day_of_moth SMALLINT NULL,
	week_of_year SMALLINT NULL,
	month_of_year SMALLINT NULL,
	quarter NVARCHAR(255) NULL,
	fiscal_period INT NULL,	
);

CREATE TABLE food_mart.inventario.warehouse(	
	warehouse_id INT NULL,
	warehouse_class_id INT NULL,
	stores_id INT NULL,
	warehouse_name NVARCHAR(255) NULL,
	wa_address1 NVARCHAR(255) NULL,
	wa_address2 NVARCHAR(255) NULL,
	wa_address3 NVARCHAR(255) NULL,
	wa_address4 NVARCHAR(255) NULL,
	warehouse_city NVARCHAR(255) NULL,
	warehouse_state_province NVARCHAR(255) NULL,
	warehouse_postal_code NVARCHAR(255) NULL,
	warehouse_country NVARCHAR(255) NULL,
	warehouse_owner_name NVARCHAR(255) NULL,
	warehouse_phone NVARCHAR(255) NULL,
	warehouse_fax NVARCHAR(255) NULL,
);

CREATE TABLE food_mart.inventario.inventory_fact_1998(	
	product_id INT NULL,
	time_id INT NULL,
	warehouse_id  INT NULL,	
	store_id INT NULL,
	units_ordered INT NULL,
	units_shipped INT NULL,
	warehouse_sales FLOAT NULL,
	warehouse_cost FLOAT NULL,
	supply_time INT NULL,
	store_invoice FLOAT NULL
);