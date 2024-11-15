CREATE TABLE [newlap].[rust_assure_products] (
    [id]              BIGINT         IDENTITY (8, 1) NOT NULL,
    [name]            NVARCHAR (191) NOT NULL,
    [type]            NVARCHAR (8)   NOT NULL,
    [sku]             NVARCHAR (20)  NOT NULL,
    [price]           INT            DEFAULT (NULL) NULL,
    [max_model_years] INT            NOT NULL,
    [terms]           NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_rust_assure_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [rust_assure_products$protection_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rust_assure_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'rust_assure_products';


GO

