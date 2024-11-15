CREATE TABLE [newlap].[product_categories] (
    [id]   BIGINT         IDENTITY (8, 1) NOT NULL,
    [name] NVARCHAR (191) NOT NULL,
    [slug] NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_product_categories_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.product_categories', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'product_categories';


GO

