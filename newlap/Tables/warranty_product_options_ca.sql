CREATE TABLE [newlap].[warranty_product_options_ca] (
    [id]         BIGINT IDENTITY (54, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_warranty_product_options_ca_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_options_ca$warranty_product_options_ca_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[warranty_options_ca] ([id]),
    CONSTRAINT [warranty_product_options_ca$warranty_product_options_ca_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[warranty_products_ca] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_ca_option_id_foreign]
    ON [newlap].[warranty_product_options_ca]([option_id] ASC);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_ca_product_id_foreign]
    ON [newlap].[warranty_product_options_ca]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_options_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_options_ca';


GO

