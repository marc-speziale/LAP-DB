CREATE TABLE [postgres].[commission_rules] (
    [id]            INT             NOT NULL,
    [product_type]  VARCHAR (255)   NULL,
    [payee_id]      BIGINT          NOT NULL,
    [dealership_id] BIGINT          NOT NULL,
    [creator_id]    BIGINT          NOT NULL,
    [status]        VARCHAR (255)   NULL,
    [percent_rate]  NUMERIC (13, 2) NULL,
    [currency_rate] NUMERIC (13, 2) NULL,
    [start_date]    DATETIME        NOT NULL,
    [end_date]      DATETIME        NOT NULL,
    [created_at]    DATETIME        NULL,
    [updated_at]    DATETIME        NULL
);


GO

