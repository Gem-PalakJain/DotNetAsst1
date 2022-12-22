CREATE TABLE [dbo].[User_Dv] (
    [UserID]       INT          NOT NULL,
    [FirstName]    VARCHAR (50) NOT NULL,
    [LastName]     VARCHAR (50) NOT NULL,
    [DOB]          DATE         NOT NULL,
    [Gender]       VARCHAR (50) NOT NULL,
    [EmailAddress] VARCHAR (50) NOT NULL,
    [Password]     VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_User_Dv] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

