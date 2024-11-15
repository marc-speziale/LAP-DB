CREATE TABLE [postgres].[gaps] (
    [id]                 INT             NOT NULL,
    [template_id]        BIGINT          NOT NULL,
    [type]               TEXT            NOT NULL,
    [created_at]         DATETIME        NULL,
    [updated_at]         DATETIME        NULL,
    [markup]             NUMERIC (13, 2) NULL,
    [rebate]             NUMERIC (13, 2) NULL,
    [down_payment_rates] NVARCHAR (255)  NULL,
    [markup_unit]        VARCHAR (255)   NULL
);


GO

