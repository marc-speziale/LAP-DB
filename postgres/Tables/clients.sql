CREATE TABLE [postgres].[clients] (
    [id]                   INT            NOT NULL,
    [first_name]           VARCHAR (32)   NULL,
    [last_name]            VARCHAR (32)   NULL,
    [email]                VARCHAR (64)   NULL,
    [location]             NVARCHAR (255) NULL,
    [phone]                VARCHAR (16)   NULL,
    [created_at]           DATETIME       NULL,
    [updated_at]           DATETIME       NULL,
    [first_nation_excempt] VARCHAR (16)   NULL
);


GO

