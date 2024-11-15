CREATE TABLE [newlap].[protection_product_types] (
    [id]           BIGINT         IDENTITY (12, 1) NOT NULL,
    [name]         NVARCHAR (191) NOT NULL,
    [code]         NVARCHAR (191) NOT NULL,
    [product_type] NVARCHAR (191) NOT NULL,
    [option_type]  NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_protection_product_types_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.protection_product_types', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'protection_product_types';


GO

