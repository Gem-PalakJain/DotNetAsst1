CREATE TABLE [dbo].[City] (
    [CityId]   INT          IDENTITY (1, 1) NOT NULL,
    [CityName] VARCHAR (20) NOT NULL,
    [Region]   VARCHAR (20) NOT NULL,
    [State]    VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([CityId] ASC),
    UNIQUE NONCLUSTERED ([CityName] ASC)
);

