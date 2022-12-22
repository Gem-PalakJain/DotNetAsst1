CREATE TABLE [dbo].[UsersDV] (
    [UserID]       INT          NOT NULL,
    [FirstName]    VARCHAR (50) NOT NULL,
    [LastName]     VARCHAR (50) NOT NULL,
    [DOB]          DATE         NOT NULL,
    [Gender]       CHAR (10)    NOT NULL,
    [EmailAddress] VARCHAR (50) NOT NULL,
    [Password]     CHAR (10)    NOT NULL,
    CONSTRAINT [PK_UsersDV] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

