CREATE TABLE [dbo].[States] (
    [StateId]   INT          IDENTITY (1, 1) NOT NULL,
    [StateName] VARCHAR (25) NULL,
    PRIMARY KEY CLUSTERED ([StateId] ASC),
    UNIQUE NONCLUSTERED ([StateName] ASC)
);

