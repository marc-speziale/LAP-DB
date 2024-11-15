CREATE TABLE [newlap].[special_priced_products] (
    [product_id]    BIGINT         NOT NULL,
    [product_type]  NVARCHAR (191) DEFAULT (NULL) NULL,
    [dealership_id] BIGINT         NOT NULL,
    [price]         INT            DEFAULT (NULL) NULL,
    CONSTRAINT [special_priced_products$special_priced_products_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [special_priced_products_dealership_id_foreign]
    ON [newlap].[special_priced_products]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.special_priced_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'special_priced_products';


GO

