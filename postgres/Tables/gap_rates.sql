CREATE TABLE [postgres].[gap_rates] (
    [id]              INT             NOT NULL,
    [gap_id]          BIGINT          NOT NULL,
    [rate_min]        NUMERIC (5, 2)  NULL,
    [rate_max]        NUMERIC (5, 2)  NULL,
    [period_min]      BIGINT          NOT NULL,
    [period_max]      BIGINT          NULL,
    [loan_amount_min] NUMERIC (13, 2) NULL,
    [loan_amount_max] NUMERIC (13, 2) NULL,
    [value]           NUMERIC (13, 2) NULL,
    [created_at]      DATETIME        NULL,
    [updated_at]      DATETIME        NULL
);


GO

