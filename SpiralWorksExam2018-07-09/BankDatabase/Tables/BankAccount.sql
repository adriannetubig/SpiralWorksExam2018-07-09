CREATE TABLE [dbo].[BankAccount] (
    [AccountNumber] INT      IDENTITY (1, 1) NOT NULL,
    [CreatedDate]   DATETIME DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([AccountNumber] ASC)
);

