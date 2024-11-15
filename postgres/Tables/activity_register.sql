CREATE TABLE [postgres].[activity_register] (
    [id]           INT            NOT NULL,
    [log_name]     VARCHAR (255)  NULL,
    [description]  TEXT           NOT NULL,
    [subject_type] VARCHAR (255)  NULL,
    [subject_id]   BIGINT         NULL,
    [causer_type]  VARCHAR (255)  NULL,
    [causer_id]    BIGINT         NULL,
    [properties]   NVARCHAR (100) NULL,
    [created_at]   DATETIME       NULL,
    [updated_at]   DATETIME       NULL,
    [event]        VARCHAR (255)  NULL,
    [batch_uuid]   SQL_VARIANT    NULL
);


GO

