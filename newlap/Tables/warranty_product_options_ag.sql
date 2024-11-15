CREATE TABLE [newlap].[warranty_product_options_ag] (
    [id]         BIGINT IDENTITY (19, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_warranty_product_options_ag_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_options_ag$warranty_product_options_ag_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[warranty_options_ag] ([id]),
    CONSTRAINT [warranty_product_options_ag$warranty_product_options_ag_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[warranty_products_ag] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_ag_option_id_foreign]
    ON [newlap].[warranty_product_options_ag]([option_id] ASC);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_ag_product_id_foreign]
    ON [newlap].[warranty_product_options_ag]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_options_ag', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_options_ag';


GO

