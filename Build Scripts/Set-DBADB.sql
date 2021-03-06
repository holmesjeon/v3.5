--  Copyright FineBuild Team © 2008 - 2018.  Distributed under Ms-Pl License

IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'$(strDBA_DB)')
BEGIN;
  CREATE DATABASE [$(strDBA_DB)];
END;
GO
ALTER  DATABASE [$(strDBA_DB)] MODIFY FILE (NAME = N'$(strDBA_DB)',     SIZE = 10 MB, FILEGROWTH = 10 MB, MAXSIZE = UNLIMITED);
ALTER  DATABASE [$(strDBA_DB)] MODIFY FILE (NAME = N'$(strDBA_DB)_log',               FILEGROWTH = 10 MB, MAXSIZE = UNLIMITED);
ALTER  DATABASE [$(strDBA_DB)] SET RECOVERY SIMPLE;



