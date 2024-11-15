CREATE TABLE [postgres].[activity_logs] (
    [id]                INT            NOT NULL,
    [user_id]           BIGINT         NULL,
    [user_first_name]   VARCHAR (32)   NULL,
    [user_last_name]    VARCHAR (32)   NULL,
    [user_email]        VARCHAR (64)   NULL,
    [user_location]     NVARCHAR (255) NULL,
    [user_phone]        VARCHAR (16)   NULL,
    [user_related_data] NVARCHAR (255) NULL,
    [action_name]       VARCHAR (100)  NULL,
    [model_type]        TEXT           NOT NULL,
    [model_id]          BIGINT         NOT NULL,
    [entity_name]       VARCHAR (100)  NULL,
    [note]              TEXT           NULL,
    [created_at]        DATETIME       NULL,
    [updated_at]        DATETIME       NULL,
    [description]       TEXT           NULL
);


GO

