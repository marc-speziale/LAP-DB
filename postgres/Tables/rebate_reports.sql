CREATE TABLE [postgres].[rebate_reports] (
    [id]           INT             NOT NULL,
    [generated_id] VARCHAR (255)   NULL,
    [creator_id]   BIGINT          NOT NULL,
    [amount]       NUMERIC (13, 2) NULL,
    [created_at]   DATETIME        NULL,
    [updated_at]   DATETIME        NULL
);


GO

