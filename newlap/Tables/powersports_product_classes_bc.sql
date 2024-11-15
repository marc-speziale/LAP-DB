CREATE TABLE [newlap].[powersports_product_classes_bc] (
    [id]         BIGINT       IDENTITY (37, 1) NOT NULL,
    [product_id] BIGINT       NOT NULL,
    [class]      NVARCHAR (1) NOT NULL,
    CONSTRAINT [PK_powersports_product_classes_bc_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [powersports_product_classes_bc$powersports_product_classes_bc_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[powersports_products_bc] ([id])
);


GO

CREATE NONCLUSTERED INDEX [powersports_product_classes_bc_product_id_foreign]
    ON [newlap].[powersports_product_classes_bc]([product_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_product_classes_bc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_product_classes_bc';


GO

