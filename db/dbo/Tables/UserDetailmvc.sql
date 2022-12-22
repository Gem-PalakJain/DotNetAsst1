CREATE TABLE [dbo].[UserDetailmvc] (
    [UserID]            INT              IDENTITY (1, 1) NOT NULL,
    [FirstName]         VARCHAR (50)     NOT NULL,
    [LastName]          VARCHAR (50)     NOT NULL,
    [DOB]               DATETIME         NULL,
    [Gender]            VARCHAR (10)     NOT NULL,
    [EmailAddress]      VARCHAR (254)    NOT NULL,
    [Password]          NVARCHAR (MAX)   NOT NULL,
    [IsEmailVerified]   BIT              NOT NULL,
    [Activationcode]    UNIQUEIDENTIFIER NOT NULL,
    [ResetPasswordCode] NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

