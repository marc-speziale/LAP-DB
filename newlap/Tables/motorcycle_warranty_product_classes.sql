CREATE TABLE [newlap].[motorcycle_warranty_product_classes] (
    [id]         BIGINT       IDENTITY (82, 1) NOT NULL,
    [product_id] BIGINT       NOT NULL,
    [class]      NVARCHAR (1) NOT NULL,
    CONSTRAINT [PK_motorcycle_warranty_product_classes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_warranty_product_classes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_warranty_product_classes';


GO

