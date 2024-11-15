CREATE TABLE [postgres].[entity_priorities] (
    [id]         INT           NOT NULL,
    [model_type] VARCHAR (255) NULL,
    [model_id]   BIGINT        NOT NULL,
    [priority]   VARCHAR (255) NULL,
    [created_at] DATETIME      NULL,
    [updated_at] DATETIME      NULL
);


GO

