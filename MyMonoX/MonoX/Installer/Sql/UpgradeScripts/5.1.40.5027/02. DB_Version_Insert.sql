Begin transaction
BEGIN TRY

	INSERT INTO [dbo].[Version]
           ([Id]
           ,[Version]
           ,[Comment]
           ,[UpgradeLog]
           ,[DateEntered])
     VALUES
           (newid()
           ,'5.1.40.5027'
           ,'http://monox.mono-software.com/ContentPage/ChangeLog/'
           ,''
           ,GETDATE())
		
COMMIT TRANSACTION                              
END TRY

BEGIN CATCH
       SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage;     
       ROLLBACK TRANSACTION
END CATCH   	  