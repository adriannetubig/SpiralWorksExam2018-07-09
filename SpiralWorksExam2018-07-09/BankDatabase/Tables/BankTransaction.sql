CREATE TABLE [dbo].[BankTransaction] (
    [BankTransactionId]     INT      IDENTITY (1, 1) NOT NULL,
    [BankTransactionTypeId] INT      NULL,
    [AccountNumber]         INT      NULL,
    [Amount]                MONEY    NULL,
    [CreatedDate]           DATETIME CONSTRAINT [DF_BankTransaction_CreatedDate] DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([BankTransactionId] ASC),
    FOREIGN KEY ([AccountNumber]) REFERENCES [dbo].[BankAccount] ([AccountNumber]),
    CONSTRAINT [FK__BankTrans__BankT__5070F446] FOREIGN KEY ([BankTransactionTypeId]) REFERENCES [dbo].[BankTransactionType] ([BankTransactionTypeId])
);



