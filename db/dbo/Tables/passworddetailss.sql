CREATE TABLE [dbo].[passworddetailss] (
    [userid]   INT          NULL,
    [Password] VARCHAR (50) NULL,
    CONSTRAINT [FK_passworddetailss_userdetailss] FOREIGN KEY ([userid]) REFERENCES [dbo].[userdetailss] ([userid])
);

