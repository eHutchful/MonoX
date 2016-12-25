SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChatMessage](
	[Id] [uniqueidentifier] NOT NULL,
	[ChatParticipantId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Message] [nvarchar](1000) NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ChatMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ChatMessage]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessage_ChatParticipant] FOREIGN KEY([ChatParticipantId])
REFERENCES [dbo].[ChatParticipant] ([Id])
GO

ALTER TABLE [dbo].[ChatMessage] CHECK CONSTRAINT [FK_ChatMessage_ChatParticipant]
GO

ALTER TABLE [dbo].[ChatMessage] ADD  CONSTRAINT [DF_ChatMessage_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO


