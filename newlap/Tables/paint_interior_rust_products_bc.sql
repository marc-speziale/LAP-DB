CREATE TABLE [newlap].[paint_interior_rust_products_bc] (
    [id]              BIGINT         IDENTITY (8, 1) NOT NULL,
    [name]            NVARCHAR (191) NOT NULL,
    [description]     NVARCHAR (MAX) NULL,
    [type]            NVARCHAR (8)   NOT NULL,
    [sku]             NVARCHAR (20)  NOT NULL,
    [price]           INT            DEFAULT (NULL) NULL,
    [max_model_years] INT            NOT NULL,
    [corrosion_sku]   SMALLINT       DEFAULT ((0)) NOT NULL,
    [related_sku_id]  BIGINT         DEFAULT (NULL) NULL,
    [parent_sku_id]   BIGINT         DEFAULT (NULL) NULL,
    [child_sku_id]    BIGINT         DEFAULT (NULL) NULL,
    [deleted_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_paint_interior_rust_products_bc_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [paint_interior_rust_products_bc$paint_interior_rust_products_bc_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.paint_interior_rust_products_bc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'paint_interior_rust_products_bc';


GO

