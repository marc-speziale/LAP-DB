CREATE TABLE [newlap].[powersports_product_options] (
    [product_id]   NVARCHAR (191) NOT NULL,
    [product_type] NVARCHAR (191) NOT NULL,
    [option_id]    NVARCHAR (191) NOT NULL,
    [option_type]  NVARCHAR (191) NOT NULL
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_product_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_product_options';


GO

