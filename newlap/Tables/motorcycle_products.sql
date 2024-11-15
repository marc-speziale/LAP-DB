CREATE TABLE [newlap].[motorcycle_products] (
    [id]       BIGINT         IDENTITY (7, 1) NOT NULL,
    [name]     NVARCHAR (191) NOT NULL,
    [details]  NVARCHAR (191) NOT NULL,
    [term]     NVARCHAR (8)   NOT NULL,
    [distance] NVARCHAR (9)   NOT NULL,
    [sku]      NVARCHAR (20)  NOT NULL,
    [price]    INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_motorcycle_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [motorcycle_products$motorcycle_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_products';


GO

