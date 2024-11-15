CREATE TABLE [postgres].[protection_additions] (
    [id]          INT            NOT NULL,
    [slug]        VARCHAR (32)   NULL,
    [name]        TEXT           NOT NULL,
    [created_at]  DATETIME       NULL,
    [updated_at]  DATETIME       NULL,
    [fullname]    TEXT           NULL,
    [eligibility] NVARCHAR (255) NULL
);


GO

