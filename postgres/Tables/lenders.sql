CREATE TABLE [postgres].[lenders] (
    [id]         INT            NOT NULL,
    [name]       VARCHAR (255)  NULL,
    [location]   NVARCHAR (255) NULL,
    [phone]      VARCHAR (255)  NULL,
    [created_at] DATETIME       NULL,
    [updated_at] DATETIME       NULL,
    [is_global]  BIT            NOT NULL
);


GO

