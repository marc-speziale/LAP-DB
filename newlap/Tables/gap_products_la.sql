CREATE TABLE [newlap].[gap_products_la] (
    [id]                 BIGINT        IDENTITY (28, 1) NOT NULL,
    [term_months]        NVARCHAR (2)  NOT NULL,
    [finance_amount]     NVARCHAR (12) NOT NULL,
    [min_finance_amount] INT           DEFAULT (NULL) NULL,
    [max_finance_amount] INT           DEFAULT (NULL) NULL,
    [sku]                NVARCHAR (20) NOT NULL,
    [price]              INT           DEFAULT (NULL) NULL,
    CONSTRAINT [PK_gap_products_la_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [gap_products_la$gap_products_la_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_products_la', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'gap_products_la';


GO

