CREATE TABLE [postgres].[templates] (
    [id]             INT             NOT NULL,
    [creator_id]     BIGINT          NULL,
    [product_type]   TEXT            NOT NULL,
    [name]           TEXT            NOT NULL,
    [is_active]      BIT             NOT NULL,
    [created_at]     DATETIME        NULL,
    [updated_at]     DATETIME        NULL,
    [deleted_at]     DATETIME        NULL,
    [markup]         NUMERIC (13, 2) NULL,
    [copied_from_id] BIGINT          NULL,
    [insurance]      TEXT            NULL,
    [markup_unit]    VARCHAR (255)   NULL
);


GO

