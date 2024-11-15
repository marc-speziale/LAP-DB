CREATE TABLE [newlap].[warranty_product_options_nas] (
    [id]         BIGINT IDENTITY (79, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_warranty_product_options_nas_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_options_nas$warranty_product_options_nas_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[warranty_options_nas] ([id]),
    CONSTRAINT [warranty_product_options_nas$warranty_product_options_nas_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[warranty_products_nas] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_nas_option_id_foreign]
    ON [newlap].[warranty_product_options_nas]([option_id] ASC);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_nas_product_id_foreign]
    ON [newlap].[warranty_product_options_nas]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_options_nas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_options_nas';


GO

