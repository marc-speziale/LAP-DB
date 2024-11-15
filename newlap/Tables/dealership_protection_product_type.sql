CREATE TABLE [newlap].[dealership_protection_product_type] (
    [dealership_id]              BIGINT NOT NULL,
    [protection_product_type_id] BIGINT NOT NULL,
    CONSTRAINT [dealership_protection_product_type$5b3f06cc03bb4] FOREIGN KEY ([protection_product_type_id]) REFERENCES [newlap].[protection_product_types] ([id]),
    CONSTRAINT [dealership_protection_product_type$dealership_protection_product_type_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [dealership_protection_product_type$5b3f06cc03bfe] UNIQUE CLUSTERED ([dealership_id] ASC, [protection_product_type_id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [5b3f06cc03bb4]
    ON [newlap].[dealership_protection_product_type]([protection_product_type_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealership_protection_product_type', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealership_protection_product_type';


GO

