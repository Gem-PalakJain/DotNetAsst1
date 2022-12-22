CREATE TABLE [dbo].[UserDetails] (
    [UserID]    INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (20)  NULL,
    [LastName]  VARCHAR (20)  NULL,
    [DOB]       DATETIME      NULL,
    [Gender]    VARCHAR (10)  NULL,
    [Email]     VARCHAR (25)  NULL,
    [Password]  VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

