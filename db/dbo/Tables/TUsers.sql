CREATE TABLE [dbo].[TUsers] (
    [UserID]       INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (50)  NULL,
    [LastName]     VARCHAR (50)  NULL,
    [DOB]          DATE          NULL,
    [Gender]       VARCHAR (50)  NULL,
    [EmailAddress] VARCHAR (100) NULL,
    CONSTRAINT [PK_TUsers] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

