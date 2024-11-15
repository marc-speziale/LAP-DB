CREATE TABLE [newlap].[motorcycle_product_manufacturers] (
    [manufacturer_id] BIGINT NOT NULL,
    [product_id]      BIGINT NOT NULL,
    CONSTRAINT [motorcycle_product_manufacturers$motorcycle_product_manufacturers_manufacturer_id_foreign] FOREIGN KEY ([manufacturer_id]) REFERENCES [newlap].[motorcycle_manufacturers] ([id]),
    CONSTRAINT [motorcycle_product_manufacturers$motorcycle_product_manufacturers_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[motorcycle_products] ([id])
);


GO

CREATE NONCLUSTERED INDEX [motorcycle_product_manufacturers_manufacturer_id_foreign]
    ON [newlap].[motorcycle_product_manufacturers]([manufacturer_id] ASC);


GO

CREATE NONCLUSTERED INDEX [motorcycle_product_manufacturers_product_id_foreign]
    ON [newlap].[motorcycle_product_manufacturers]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_product_manufacturers', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_product_manufacturers';


GO

