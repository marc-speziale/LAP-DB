CREATE TABLE [newlap].[warranty_product_options_ap] (
    [id]         BIGINT IDENTITY (32, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_warranty_product_options_ap_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_options_ap$warranty_product_options_ap_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[warranty_options_ap] ([id]),
    CONSTRAINT [warranty_product_options_ap$warranty_product_options_ap_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[warranty_products_ap] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_ap_option_id_foreign]
    ON [newlap].[warranty_product_options_ap]([option_id] ASC);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_ap_product_id_foreign]
    ON [newlap].[warranty_product_options_ap]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_options_ap', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_options_ap';


GO

