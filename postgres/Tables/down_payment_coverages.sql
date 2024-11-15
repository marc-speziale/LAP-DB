CREATE TABLE [postgres].[down_payment_coverages] (
    [id]         INT             NOT NULL,
    [amount_min] NUMERIC (13, 2) NULL,
    [amount_max] NUMERIC (13, 2) NULL,
    [price]      NUMERIC (13, 2) NULL,
    [created_at] DATETIME        NULL,
    [updated_at] DATETIME        NULL
);


GO

