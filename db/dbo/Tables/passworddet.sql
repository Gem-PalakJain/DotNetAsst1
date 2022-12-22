CREATE TABLE [dbo].[passworddet] (
    [userid]   INT          NOT NULL,
    [password] VARCHAR (50) NULL,
    CONSTRAINT [PK_passworddet] PRIMARY KEY CLUSTERED ([userid] ASC)
);

