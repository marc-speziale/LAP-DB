CREATE TABLE [newlap].[adloe_products] (
    [id]                  BIGINT        IDENTITY (3, 1) NOT NULL,
    [min_monthly_payment] INT           DEFAULT (NULL) NULL,
    [max_monthly_payment] INT           DEFAULT (NULL) NULL,
    [sku]                 NVARCHAR (20) NOT NULL,
    [price]               INT           DEFAULT (NULL) NULL,
    CONSTRAINT [PK_adloe_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [adloe_products$adloe_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.adloe_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'adloe_products';


GO

