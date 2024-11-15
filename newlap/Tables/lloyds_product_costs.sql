CREATE TABLE [newlap].[lloyds_product_costs] (
    [sku_id]       BIGINT         NOT NULL,
    [sku_type]     NVARCHAR (191) NOT NULL,
    [cost]         BIGINT         DEFAULT (NULL) NULL,
    [effective_at] DATETIME       DEFAULT (getdate()) NOT NULL
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.lloyds_product_costs', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'lloyds_product_costs';


GO

