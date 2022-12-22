CREATE TABLE [dbo].[userdetailss] (
    [userid]       INT           NOT NULL,
    [Firstname]    VARCHAR (50)  NULL,
    [Lastname]     VARCHAR (50)  NULL,
    [Dob]          DATE          NULL,
    [Gender]       VARCHAR (6)   NULL,
    [EmailAddress] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([userid] ASC)
);

