CREATE TABLE [dbo].[UserDetail] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [UserName]     VARCHAR (30)  NOT NULL,
    [FirstName]    VARCHAR (100) NOT NULL,
    [LastName]     VARCHAR (20)  NULL,
    [Gender]       VARCHAR (10)  NOT NULL,
    [Emailaddress] VARCHAR (50)  NULL,
    [Dob]          DATE          NULL,
    [Password]     VARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

