Use master;

If exists(select 1 from sys.databases where name ='DataWarehouse')
  BEGIN
  Alter DATABASE DataWarehouse set Single_user with Rollback Immediate;
  Drop DATABASE DataWarehouse;
END;
GO
Create Database DataWarehouse;

use DataWarehouse;


Go
Create Schema Bronze;
Go
Create Schema Silver;
Go
Create Schema Gold;
