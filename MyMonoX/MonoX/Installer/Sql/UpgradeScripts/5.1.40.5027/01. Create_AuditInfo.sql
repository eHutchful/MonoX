-- USE []

BEGIN TRANSACTION
BEGIN TRY

CREATE TABLE [dbo].[AuditInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[AffectedEntityName] [nvarchar](250) NULL,
	[ActionDateTime] [datetime] NOT NULL,
	[ActionType] [int] NOT NULL,
	[ActionTypeName] [nvarchar](150) NULL,
	[ActionPerformedByUser] [nvarchar](250) NULL,
	[ActionData] [nvarchar](max) NULL,
	[ActionDataBinary] [varbinary](max) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[ConcurrencyTimeStamp] [timestamp] NULL,
	[IpAddress] [nvarchar](50) NULL,
	[UserAgent] [nvarchar](255) NULL,
	[Referrer] [nvarchar](500) NULL,
    CONSTRAINT [PK_AuditInfo] PRIMARY KEY CLUSTERED ([Id] ASC)
)

ALTER TABLE [dbo].[AuditInfo]  WITH CHECK ADD  
CONSTRAINT [FK_AuditInfo_aspnet_Users] FOREIGN KEY([UserId]) REFERENCES [dbo].[aspnet_Users] ([UserId]) ON DELETE CASCADE
ALTER TABLE [dbo].[AuditInfo] CHECK CONSTRAINT [FK_AuditInfo_aspnet_Users]

ALTER TABLE [dbo].[AuditInfo] ADD  CONSTRAINT [DF_AuditInfo_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
ALTER TABLE [dbo].[AuditInfo] ADD  CONSTRAINT [DF_AuditInfo_DateUpdated]  DEFAULT (getutcdate()) FOR [DateUpdated]


COMMIT TRANSACTION
--ROLLBACK TRANSACTION
END TRY

BEGIN CATCH
       SELECT ERROR_LINE() AS [Line], ERROR_MESSAGE() AS [Message],     
        ERROR_NUMBER() AS [Number], ERROR_SEVERITY() AS [Severity],
        ERROR_STATE() AS [State], ERROR_PROCEDURE() AS [Procedure]
        ORDER BY [Line];
       ROLLBACK TRANSACTION
END CATCH   
GO