CREATE TABLE [newlap].[powersports_products] (
    [id]          BIGINT         IDENTITY (30, 1) NOT NULL,
    [term_months] INT            NOT NULL,
    [per_claim]   NVARCHAR (191) NOT NULL,
    [sku]         NVARCHAR (20)  NOT NULL,
    [dealer_cost] INT            DEFAULT (NULL) NULL,
    [price]       INT            NOT NULL,
    [type]        NVARCHAR (8)   NOT NULL,
    CONSTRAINT [PK_powersports_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [powersports_products$powersports_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_products';


GO

