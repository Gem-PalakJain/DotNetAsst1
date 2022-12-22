CREATE TABLE [dbo].[Users] (
    [UserID]            INT              IDENTITY (1, 1) NOT NULL,
    [FirstName]         VARCHAR (50)     NOT NULL,
    [LastName]          VARCHAR (50)     NOT NULL,
    [EmailID]           VARCHAR (254)    NULL,
    [DateOfBirth]       DATETIME         NULL,
    [Password]          NVARCHAR (MAX)   NOT NULL,
    [IsEmailVerified]   BIT              NOT NULL,
    [ActivationCode]    UNIQUEIDENTIFIER NOT NULL,
    [ResetPasswordCode] NVARCHAR (100)   NULL,
    CONSTRAINT [PK__Users__1788CCAC2D20EB0D] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

