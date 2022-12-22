CREATE TABLE [dbo].[Table1] (
    [UserID]          INT              IDENTITY (1, 1) NOT NULL,
    [FirstName]       VARCHAR (50)     NOT NULL,
    [LastName]        VARCHAR (50)     NOT NULL,
    [EmailID]         VARCHAR (250)    NOT NULL,
    [DateOfBirth]     DATETIME         NULL,
    [Password]        NVARCHAR (MAX)   NOT NULL,
    [IsEmailVerified] BIT              NOT NULL,
    [ActivationCode]  UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

