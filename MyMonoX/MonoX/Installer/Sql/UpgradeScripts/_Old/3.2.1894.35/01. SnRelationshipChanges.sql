﻿BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnRelationship ADD
	ListItemId uniqueidentifier NULL
GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_ListItem FOREIGN KEY
	(
	ListItemId
	) REFERENCES dbo.ListItem
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
 