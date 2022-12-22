CREATE TABLE [dbo].[Table] (
    [UserID]            INT              IDENTITY (1, 1) NOT NULL,
    [FirstName]         VARCHAR (50)     NOT NULL,
    [LastName]          VARCHAR (50)     NOT NULL,
    [EmailID]           VARCHAR (250)    NOT NULL,
    [DateOfBirth]       DATETIME         NULL,
    [Mobile]            NCHAR (10)       NOT NULL,
    [Password]          VARCHAR (50)     NOT NULL,
    [IsEmailVerified]   BIT              NOT NULL,
    [ActivationCode]    UNIQUEIDENTIFIER NOT NULL,
    [ResetPasswordCode] NCHAR (50)       NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

