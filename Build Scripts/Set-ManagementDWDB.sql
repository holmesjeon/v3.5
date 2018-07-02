--  Copyright FineBuild Team © 2008 - 2017.  Distributed under Ms-Pl License

IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'$(strManagementDW)')
  BEGIN;
  CREATE DATABASE [$(strManagementDW)];
  ALTER  DATABASE [$(strManagementDW)] MODIFY FILE (NAME = N'$(strManagementDW)',     SIZE = 200 MB, FILEGROWTH = 200 MB, MAXSIZE = UNLIMITED);
  ALTER  DATABASE [$(strManagementDW)] MODIFY FILE (NAME = N'$(strManagementDW)_log', SIZE = 50 MB,  FILEGROWTH = 50 MB,  MAXSIZE = UNLIMITED);
  ALTER  DATABASE [$(strManagementDW)] SET RECOVERY SIMPLE;
  END;


