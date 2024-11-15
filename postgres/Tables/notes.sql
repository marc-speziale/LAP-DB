CREATE TABLE [postgres].[notes] (
    [id]         INT           NOT NULL,
    [model_type] VARCHAR (255) NULL,
    [model_id]   BIGINT        NOT NULL,
    [text]       TEXT          NOT NULL,
    [user_id]    BIGINT        NOT NULL,
    [created_at] DATETIME      NULL,
    [updated_at] DATETIME      NULL
);


GO

