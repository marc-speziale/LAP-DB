CREATE TABLE [newlap].[powersports_products_bc] (
    [id]           BIGINT         IDENTITY (22, 1) NOT NULL,
    [term_months]  INT            NOT NULL,
    [per_claim]    NVARCHAR (191) NOT NULL,
    [sku]          NVARCHAR (20)  NOT NULL,
    [dealer_cost]  INT            DEFAULT (NULL) NULL,
    [price]        INT            NOT NULL,
    [type]         NVARCHAR (8)   NOT NULL,
    [awn_sku]      NVARCHAR (20)  NOT NULL,
    [max_retail]   INT            DEFAULT (NULL) NULL,
    [premium_rate] INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_powersports_products_bc_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [powersports_products_bc$powersports_products_bc_awn_sku_unique] UNIQUE NONCLUSTERED ([awn_sku] ASC),
    CONSTRAINT [powersports_products_bc$powersports_products_bc_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_products_bc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_products_bc';


GO

