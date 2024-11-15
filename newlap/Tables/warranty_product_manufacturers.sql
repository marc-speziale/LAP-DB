CREATE TABLE [newlap].[warranty_product_manufacturers] (
    [id]              BIGINT         IDENTITY (32, 1) NOT NULL,
    [product_id]      BIGINT         NOT NULL,
    [product_type]    NVARCHAR (191) DEFAULT (NULL) NULL,
    [manufacturer_id] BIGINT         NOT NULL,
    [created_at]      DATETIME       DEFAULT (NULL) NULL,
    [updated_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_product_manufacturers_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_product_manufacturers$warranty_product_manufacturers_manufacturer_id_foreign] FOREIGN KEY ([manufacturer_id]) REFERENCES [newlap].[manufacturers] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_product_manufacturers_manufacturer_id_foreign]
    ON [newlap].[warranty_product_manufacturers]([manufacturer_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_product_manufacturers', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_product_manufacturers';


GO

