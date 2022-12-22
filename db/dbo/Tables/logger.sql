CREATE TABLE [dbo].[logger] (
    [SN]           INT          IDENTITY (1, 1) NOT NULL,
    [Type_]        VARCHAR (50) NULL,
    [Description_] TEXT         NULL,
    [Time_]        DATETIME     DEFAULT (getdate()) NULL,
    [username]     VARCHAR (25) NULL,
    PRIMARY KEY CLUSTERED ([SN] ASC)
);

