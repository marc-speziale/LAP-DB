CREATE TABLE [newlap].[dealership_gap_product_type] (
    [dealership_id]       BIGINT NOT NULL,
    [gap_product_type_id] BIGINT NOT NULL,
    CONSTRAINT [dealership_gap_product_type$5b3a327ef2fda] FOREIGN KEY ([gap_product_type_id]) REFERENCES [newlap].[gap_product_types] ([id]),
    CONSTRAINT [dealership_gap_product_type$dealership_gap_product_type_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [dealership_gap_product_type$5b3a327ef3025] UNIQUE CLUSTERED ([dealership_id] ASC, [gap_product_type_id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [5b3a327ef2fda]
    ON [newlap].[dealership_gap_product_type]([gap_product_type_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealership_gap_product_type', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealership_gap_product_type';


GO

