/*
===============================================================
 Project: SQL Data Warehouse Setup
 Description: 
   Initial setup script for creating the DataWarehouse database 
   and its core schemas (bronze, silver, gold) following the 
   multi-layered architecture used in data engineering projects.
 Author: Hanen Elkhishen
 Program: SSMS
===============================================================
*/

USE master;

-- Create database
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

-- Create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
