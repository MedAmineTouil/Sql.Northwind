CREATE TABLE [dbo].[Country] (
    [CountryId] INT          NOT NULL,
    [Name]      VARCHAR (20) NULL,
    [Currency]  VARCHAR (3)  NULL,
    PRIMARY KEY CLUSTERED ([CountryId] ASC)
);

