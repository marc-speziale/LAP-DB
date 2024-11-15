CREATE TABLE [postgres].[transactions] (
    [id]             BIGINT          NOT NULL,
    [type]           VARCHAR (255)   NULL,
    [price]          NUMERIC (13, 2) NULL,
    [note]           TEXT            NULL,
    [application_id] BIGINT          NOT NULL,
    [creator_id]     BIGINT          NULL,
    [created_at]     DATETIME        NULL,
    [updated_at]     DATETIME        NULL
);


GO

