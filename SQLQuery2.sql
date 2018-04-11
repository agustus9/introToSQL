SELECT TOP 10 *
  FROM [dbo].[UserTransactions]
  WHERE [AccountNumber] = 1234
  ORDER BY [Timestamp] DESC;