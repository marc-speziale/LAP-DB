CREATE TABLE [newlap].[warranty_products_ap] (
    [id]           BIGINT         IDENTITY (11, 1) NOT NULL,
    [term]         NVARCHAR (2)   DEFAULT (NULL) NULL,
    [distance]     NVARCHAR (6)   DEFAULT (NULL) NULL,
    [sku]          NVARCHAR (20)  NOT NULL,
    [claim_amount] NVARCHAR (191) DEFAULT (NULL) NULL,
    [type]         NVARCHAR (9)   NOT NULL,
    [price]        INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_products_ap_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_ap$warranty_products_ap_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ap', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_ap';


GO

