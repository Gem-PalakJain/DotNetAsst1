CREATE TABLE [dbo].[tblUser] (
    [ID]          INT         IDENTITY (1, 1) NOT NULL,
    [Password]    NCHAR (100) NULL,
    [Firstname]   NCHAR (50)  NOT NULL,
    [Lastname]    NCHAR (50)  NOT NULL,
    [Email]       NCHAR (100) NULL,
    [Gender]      NCHAR (20)  NOT NULL,
    [DateOfBirth] DATETIME    NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([ID] ASC)
);

