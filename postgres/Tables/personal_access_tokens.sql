CREATE TABLE [postgres].[personal_access_tokens] (
    [id]             INT           NOT NULL,
    [tokenable_type] VARCHAR (255) NULL,
    [tokenable_id]   BIGINT        NOT NULL,
    [name]           VARCHAR (255) NULL,
    [token]          VARCHAR (64)  NULL,
    [abilities]      TEXT          NULL,
    [last_used_at]   DATETIME      NULL,
    [expires_at]     DATETIME      NULL,
    [created_at]     DATETIME      NULL,
    [updated_at]     DATETIME      NULL
);


GO

