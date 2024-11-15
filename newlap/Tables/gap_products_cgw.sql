CREATE TABLE [newlap].[gap_products_cgw] (
    [id]                 BIGINT         IDENTITY (547, 1) NOT NULL,
    [term_months]        NVARCHAR (2)   NOT NULL,
    [finance_amount]     NVARCHAR (12)  DEFAULT (NULL) NULL,
    [type]               NVARCHAR (9)   DEFAULT (N'Used') NULL,
    [sku]                NVARCHAR (20)  NOT NULL,
    [price]              INT            DEFAULT (NULL) NULL,
    [double_gap]         SMALLINT       DEFAULT ((0)) NOT NULL,
    [dealer_cost]        INT            DEFAULT (NULL) NULL,
    [max_model_years]    INT            DEFAULT (NULL) NULL,
    [deleted_at]         DATETIME       DEFAULT (NULL) NULL,
    [min_interest_rate]  DECIMAL (4, 2) DEFAULT (NULL) NULL,
    [max_interest_rate]  DECIMAL (4, 2) DEFAULT (NULL) NULL,
    [min_finance_amount] DECIMAL (8, 2) DEFAULT (NULL) NULL,
    [max_finance_amount] DECIMAL (8, 2) DEFAULT (NULL) NULL,
    [min_finance_term]   INT            DEFAULT (NULL) NULL,
    [max_finance_term]   INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_gap_products_cgw_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [gap_products_cgw$gap_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'gap_products_cgw';


GO

