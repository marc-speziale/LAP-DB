CREATE TABLE [newlap].[warranty_product_options_cgwbc] (
    [id]         BIGINT IDENTITY (529, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_warranty_product_options_cgwbc_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_options_cgwbc$warranty_product_options_cgwbc_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[warranty_options_cgwbc] ([id]),
    CONSTRAINT [warranty_product_options_cgwbc$warranty_product_options_cgwbc_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[warranty_products_cgwbc] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_cgwbc_option_id_foreign]
    ON [newlap].[warranty_product_options_cgwbc]([option_id] ASC);


GO

CREATE NONCLUSTERED INDEX [warranty_product_options_cgwbc_product_id_foreign]
    ON [newlap].[warranty_product_options_cgwbc]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_options_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_options_cgwbc';


GO

