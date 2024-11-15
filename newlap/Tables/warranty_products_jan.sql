CREATE TABLE [newlap].[warranty_products_jan] (
    [id]      BIGINT         IDENTITY (2, 1) NOT NULL,
    [display] NVARCHAR (191) NOT NULL,
    [sku]     NVARCHAR (20)  NOT NULL,
    [price]   INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_products_jan_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_jan$warranty_products_jan_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_jan', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_jan';


GO

