CREATE TABLE [dbo].[UserDetails_1] (
    [UserID]       INT          NOT NULL,
    [FirstName]    VARCHAR (50) NULL,
    [LastName]     VARCHAR (50) NULL,
    [DOB]          DATE         NULL,
    [Gender]       CHAR (10)    NULL,
    [EmailAddress] VARCHAR (50) NULL,
    CONSTRAINT [PK_UserDetails_1] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

