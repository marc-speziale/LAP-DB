CREATE TABLE [newlap].[dealership_warranty_product_type] (
    [dealership_id]            BIGINT NOT NULL,
    [warranty_product_type_id] BIGINT NOT NULL,
    CONSTRAINT [dealership_warranty_product_type$5b2b3ac8ae956] FOREIGN KEY ([warranty_product_type_id]) REFERENCES [newlap].[warranty_product_types] ([id]),
    CONSTRAINT [dealership_warranty_product_type$dealership_warranty_product_type_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [dealership_warranty_product_type$5b2b3ac8ae99c] UNIQUE CLUSTERED ([dealership_id] ASC, [warranty_product_type_id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [5b2b3ac8ae956]
    ON [newlap].[dealership_warranty_product_type]([warranty_product_type_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealership_warranty_product_type', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealership_warranty_product_type';


GO

