CREATE TABLE [dbo].[USEREA] (
    [Id]        INT           NOT NULL,
    [firstname] NCHAR (30)    NOT NULL,
    [lastname]  NCHAR (30)    NOT NULL,
    [gender]    CHAR (10)     NOT NULL,
    [email]     NVARCHAR (50) NOT NULL,
    [date]      DATE          NOT NULL,
    [password]  NCHAR (30)    NOT NULL,
    [cpassword] NCHAR (30)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

