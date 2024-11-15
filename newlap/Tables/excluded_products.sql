CREATE TABLE [newlap].[excluded_products] (
    [dealership_id] BIGINT         NOT NULL,
    [product_id]    BIGINT         NOT NULL,
    [product_type]  NVARCHAR (191) NOT NULL,
    CONSTRAINT [excluded_products$excluded_products_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [excluded_products_dealership_id_foreign]
    ON [newlap].[excluded_products]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.excluded_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'excluded_products';


GO

