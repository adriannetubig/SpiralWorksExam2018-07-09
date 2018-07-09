CREATE TABLE [dbo].[BankTransactionType] (
    [BankTransactionTypeId] INT           NOT NULL,
    [Name]                  NVARCHAR (50) NULL,
    [IncrementMoney]        BIT           NULL,
    CONSTRAINT [PK__BankTran__F205C477C61BBF92] PRIMARY KEY CLUSTERED ([BankTransactionTypeId] ASC)
);



