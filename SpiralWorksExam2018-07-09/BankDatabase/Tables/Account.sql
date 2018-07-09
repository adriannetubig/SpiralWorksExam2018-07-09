CREATE TABLE [dbo].[Account] (
    [ID]            INT           IDENTITY (1, 1) NOT NULL,
    [LoginName]     NVARCHAR (50) NOT NULL,
    [AccountNumber] INT           NULL,
    [Password]      NVARCHAR (50) NULL,
    [Balance]       MONEY         NULL,
    [CreatedDate]   DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([LoginName] ASC),
    FOREIGN KEY ([AccountNumber]) REFERENCES [dbo].[BankAccount] ([AccountNumber])
);

