CREATE TABLE [newlap].[warranty_product_options_jan] (
    [id]         BIGINT IDENTITY (1, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_warranty_product_options_jan_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_options_jan$warranty_product_options_jan_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[warranty_options_ag] ([id]),
    CONSTRAINT [warranty_product_options_jan$warranty_product_options_jan_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[warranty_products_ag] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_jan_product_id_foreign]
    ON [newlap].[warranty_product_options_jan]([product_id] ASC);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_jan_option_id_foreign]
    ON [newlap].[warranty_product_options_jan]([option_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_options_jan', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_options_jan';


GO

