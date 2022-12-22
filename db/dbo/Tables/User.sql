CREATE TABLE [dbo].[User] (
    [UserID]            INT              IDENTITY (1, 1) NOT NULL,
    [FirstName]         VARCHAR (50)     NOT NULL,
    [LastName]          VARCHAR (50)     NOT NULL,
    [EmailID]           VARCHAR (254)    NOT NULL,
    [DateOfBirth]       DATETIME         NULL,
    [Password]          NVARCHAR (MAX)   NOT NULL,
    [IsEmailVerified]   BIT              NOT NULL,
    [ActivationCode]    UNIQUEIDENTIFIER NOT NULL,
    [ResetPasswordCode] NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

