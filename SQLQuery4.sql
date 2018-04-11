SELECT Count([Timestamp]), [Timestamp]
  FROM [dbo].[UserTransactions]
  WHERE [Timestamp] = '2018-04-10'
  GROUP BY [Timestamp];