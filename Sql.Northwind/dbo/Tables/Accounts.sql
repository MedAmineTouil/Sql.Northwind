CREATE TABLE [dbo].[Accounts] (
    [AccountId]    INT          NOT NULL,
    [CountryId]    INT          NOT NULL,
    [Label]        VARCHAR (20) NULL,
    [CreationDate] DATE         NULL,
    [MaturityDate] DATE         NULL,
    [UserID]       INT          NOT NULL,
    CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED ([AccountId] ASC, [UserID] ASC, [CountryId] ASC),
    FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([CountryId]),
    CONSTRAINT [FK_Accounts] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);

