USE [master]
GO

CREATE LOGIN [nopsema] WITH PASSWORD=N'nopsema',
  CHECK_EXPIRATION=OFF, CHECK_POLICY=off
GO

EXEC sys.sp_addsrvrolemember @loginame = N'nopsema', @rolename = N'serveradmin'
GO

EXEC sys.sp_addsrvrolemember @loginame = N'nopsema', @rolename = N'sysadmin'
GO

EXEC sys.sp_addsrvrolemember @loginame = N'nopsema', @rolename = N'dbcreator'
GO

CREATE DATABASE rms_test
GO

CREATE DATABASE rms_development
GO
