CREATE TABLE [dbo].[BankTransfer] (
    [BankTransferId]      INT      IDENTITY (1, 1) NOT NULL,
    [BankTransactionId]   INT      NULL,
    [SourceAccountNumber] INT      NULL,
    [TargetAccountNumber] INT      NULL,
    [Amount]              MONEY    NULL,
    [CreatedDate]         DATETIME CONSTRAINT [DF_BankTransfer_CreatedDate] DEFAULT (getdate()) NULL,
    FOREIGN KEY ([BankTransactionId]) REFERENCES [dbo].[BankTransaction] ([BankTransactionId]),
    FOREIGN KEY ([SourceAccountNumber]) REFERENCES [dbo].[BankAccount] ([AccountNumber]),
    FOREIGN KEY ([TargetAccountNumber]) REFERENCES [dbo].[BankAccount] ([AccountNumber])
);

