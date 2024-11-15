CREATE TABLE [newlap].[nas_protection_plus_products] (
    [id]              BIGINT         IDENTITY (12, 1) NOT NULL,
    [name]            NVARCHAR (191) NOT NULL,
    [type]            NVARCHAR (8)   NOT NULL,
    [sku]             NVARCHAR (20)  NOT NULL,
    [price]           INT            DEFAULT (NULL) NULL,
    [max_model_years] INT            NOT NULL,
    [corrosion_sku]   SMALLINT       DEFAULT ((0)) NOT NULL,
    [related_sku_id]  BIGINT         DEFAULT (NULL) NULL,
    [parent_sku_id]   BIGINT         DEFAULT (NULL) NULL,
    [child_sku_id]    BIGINT         DEFAULT (NULL) NULL,
    [deleted_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_nas_protection_plus_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [nas_protection_plus_products$nas_protection_plus_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_protection_plus_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'nas_protection_plus_products';


GO

