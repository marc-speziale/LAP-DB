CREATE TABLE [postgres].[benefits] (
    [id]         INT           NOT NULL,
    [title]      VARCHAR (255) NULL,
    [key]        VARCHAR (255) NULL,
    [parent_id]  BIGINT        NULL,
    [created_at] DATETIME      NULL,
    [updated_at] DATETIME      NULL
);


GO

