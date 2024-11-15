CREATE TABLE [postgres].[remittances] (
    [id]                 INT             NOT NULL,
    [generated_id]       TEXT            NOT NULL,
    [creator_id]         BIGINT          NULL,
    [creator_first_name] VARCHAR (32)    NULL,
    [creator_last_name]  VARCHAR (32)    NULL,
    [is_paid]            BIT             NOT NULL,
    [status]             TEXT            NOT NULL,
    [price]              NUMERIC (13, 2) NULL,
    [created_at]         DATETIME        NULL,
    [updated_at]         DATETIME        NULL,
    [deleted_at]         DATETIME        NULL,
    [cheque]             VARCHAR (255)   NULL
);


GO

