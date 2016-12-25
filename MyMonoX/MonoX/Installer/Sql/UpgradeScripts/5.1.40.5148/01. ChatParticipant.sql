SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChatParticipant](
	[Id] [uniqueidentifier] NOT NULL,
	[ChatSessionId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[JoinDate] [datetime] NOT NULL,
	[LeaveDate] [datetime] NULL,
	[IsInFocus] [bit] NOT NULL,
	[IsOpened] [bit] NOT NULL,
 CONSTRAINT [PK_ChatParticipant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ChatParticipant]  WITH CHECK ADD  CONSTRAINT [FK_ChatParticipant_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO

ALTER TABLE [dbo].[ChatParticipant] CHECK CONSTRAINT [FK_ChatParticipant_aspnet_Users]
GO

ALTER TABLE [dbo].[ChatParticipant]  WITH CHECK ADD  CONSTRAINT [FK_ChatParticipant_ChatSession] FOREIGN KEY([ChatSessionId])
REFERENCES [dbo].[ChatSession] ([Id])
GO

ALTER TABLE [dbo].[ChatParticipant] CHECK CONSTRAINT [FK_ChatParticipant_ChatSession]
GO

ALTER TABLE [dbo].[ChatParticipant] ADD  CONSTRAINT [DF_ChatParticipant_IsInFocus]  DEFAULT ((0)) FOR [IsInFocus]
GO

ALTER TABLE [dbo].[ChatParticipant] ADD  CONSTRAINT [DF_ChatParticipant_Opened]  DEFAULT ((0)) FOR [IsOpened]
GO


