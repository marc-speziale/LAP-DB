CREATE TABLE [newlap].[awn_sku_options] (
    [awn_sku]        NVARCHAR (191) NOT NULL,
    [cgw_option_sku] NVARCHAR (191) NOT NULL,
    CONSTRAINT [awn_sku_options$awn_sku_options_awn_sku_foreign] FOREIGN KEY ([awn_sku]) REFERENCES [newlap].[awn_skus] ([awn_sku])
);


GO

CREATE NONCLUSTERED INDEX [awn_sku_options_cgw_option_sku_index]
    ON [newlap].[awn_sku_options]([cgw_option_sku] ASC);


GO

CREATE NONCLUSTERED INDEX [awn_sku_options_awn_sku_foreign]
    ON [newlap].[awn_sku_options]([awn_sku] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.awn_sku_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'awn_sku_options';


GO

