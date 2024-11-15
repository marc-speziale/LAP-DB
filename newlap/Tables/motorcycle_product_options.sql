CREATE TABLE [newlap].[motorcycle_product_options] (
    [id]         BIGINT IDENTITY (13, 1) NOT NULL,
    [product_id] BIGINT NOT NULL,
    [option_id]  BIGINT NOT NULL,
    CONSTRAINT [PK_motorcycle_product_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [motorcycle_product_options$motorcycle_product_options_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[motorcycle_options] ([id]),
    CONSTRAINT [motorcycle_product_options$motorcycle_product_options_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[motorcycle_products] ([id])
);


GO

CREATE NONCLUSTERED INDEX [motorcycle_product_options_option_id_foreign]
    ON [newlap].[motorcycle_product_options]([option_id] ASC);


GO

CREATE NONCLUSTERED INDEX [motorcycle_product_options_product_id_foreign]
    ON [newlap].[motorcycle_product_options]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_product_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_product_options';


GO

