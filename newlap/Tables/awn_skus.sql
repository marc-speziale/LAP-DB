CREATE TABLE [newlap].[awn_skus] (
    [cgw_sku] NVARCHAR (191) NOT NULL,
    [awn_sku] NVARCHAR (191) NOT NULL,
    CONSTRAINT [awn_skus$awn_skus_awn_sku_unique] UNIQUE CLUSTERED ([awn_sku] ASC)
);


GO

CREATE NONCLUSTERED INDEX [awn_skus_cgw_sku_index]
    ON [newlap].[awn_skus]([cgw_sku] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.awn_skus', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'awn_skus';


GO

