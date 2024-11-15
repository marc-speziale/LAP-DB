CREATE TABLE [newlap].[warranty_product_classes] (
    [product_id]   BIGINT         NOT NULL,
    [product_type] NVARCHAR (191) DEFAULT (NULL) NULL,
    [class]        NVARCHAR (1)   NOT NULL
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_classes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_classes';


GO

