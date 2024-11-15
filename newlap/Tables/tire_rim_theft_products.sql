CREATE TABLE [newlap].[tire_rim_theft_products] (
    [id]          BIGINT         IDENTITY (2, 1) NOT NULL,
    [name]        NVARCHAR (191) NOT NULL,
    [description] NVARCHAR (MAX) NULL,
    [sku]         NVARCHAR (20)  NOT NULL,
    [price]       INT            DEFAULT (NULL) NULL,
    [term_months] NVARCHAR (2)   DEFAULT (NULL) NULL,
    [deleted_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_tire_rim_theft_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [tire_rim_theft_products$tire_rim_theft_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.tire_rim_theft_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'tire_rim_theft_products';


GO

