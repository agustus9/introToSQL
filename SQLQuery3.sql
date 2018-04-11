INSERT INTO [dbo].[UserTransactions]
           ([Timestamp]
           ,[Action]
           ,[AccountNumber]
           ,[AmountChanged]
           ,[newAmount])
     VALUES
           ('2018-03-05'
           ,'deposit'
           ,'6664'
           ,805
           ,2000);
	SELECT * FROM [dbo].[UserTransactions];