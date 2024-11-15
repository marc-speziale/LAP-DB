CREATE TABLE [newlap].[warranty_product_options_cn] (
    [id]         BIGINT IDENTITY (159, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_warranty_product_options_cn_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_options_cn$warranty_product_options_cn_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[warranty_options_cn] ([id]),
    CONSTRAINT [warranty_product_options_cn$warranty_product_options_cn_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[warranty_products_cn] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_cn_product_id_foreign]
    ON [newlap].[warranty_product_options_cn]([product_id] ASC);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_cn_option_id_foreign]
    ON [newlap].[warranty_product_options_cn]([option_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_options_cn', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_options_cn';


GO

