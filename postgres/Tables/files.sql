CREATE TABLE [postgres].[files] (
    [id]         INT           NOT NULL,
    [model_type] VARCHAR (255) NULL,
    [model_id]   BIGINT        NOT NULL,
    [name]       VARCHAR (255) NULL,
    [file_name]  VARCHAR (255) NULL,
    [path]       VARCHAR (500) NULL,
    [created_at] DATETIME      NULL,
    [updated_at] DATETIME      NULL,
    [type]       TEXT          NULL
);


GO

