CREATE TABLE [dbo].[PasswordDetails_1] (
    [UserID]   INT          NULL,
    [Password] VARCHAR (50) NULL,
    CONSTRAINT [FK_PasswordDetails_1_UserDetails_1] FOREIGN KEY ([UserID]) REFERENCES [dbo].[UserDetails_1] ([UserID])
);

