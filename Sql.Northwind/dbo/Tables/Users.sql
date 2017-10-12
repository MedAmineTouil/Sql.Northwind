CREATE TABLE [dbo].[Users] (
    [Name]        VARCHAR (10) NULL,
    [Address]     VARCHAR (50) NULL,
    [PhoneNumber] VARCHAR (20) NULL,
    [UserID]      INT          IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [pk_Users] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

