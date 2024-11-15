CREATE TABLE [newlap].[nas_peace_of_mind_products] (
    [id]                BIGINT        IDENTITY (34, 1) NOT NULL,
    [sku]               NVARCHAR (20) NOT NULL,
    [term_months]       NVARCHAR (2)  DEFAULT (NULL) NULL,
    [price]             INT           DEFAULT (NULL) NULL,
    [max_model_years]   BIGINT        DEFAULT ((10)) NOT NULL,
    [ec_classification] NVARCHAR (14) NOT NULL,
    [deleted_at]        DATETIME      DEFAULT (NULL) NULL,
    CONSTRAINT [PK_nas_peace_of_mind_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [nas_peace_of_mind_products$nas_peace_of_mind_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_peace_of_mind_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'nas_peace_of_mind_products';


GO

