CREATE TABLE [newlap].[powersports_product_classes] (
    [id]         BIGINT       IDENTITY (49, 1) NOT NULL,
    [product_id] BIGINT       NOT NULL,
    [class]      NVARCHAR (1) NOT NULL,
    CONSTRAINT [PK_powersports_product_classes_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [powersports_product_classes$powersports_product_classes_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[powersports_products] ([id])
);


GO

CREATE NONCLUSTERED INDEX [powersports_product_classes_product_id_foreign]
    ON [newlap].[powersports_product_classes]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_product_classes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_product_classes';


GO

