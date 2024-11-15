CREATE TABLE [newlap].[motorcycle_warranty_products] (
    [id]              BIGINT        IDENTITY (55, 1) NOT NULL,
    [term_months]     NVARCHAR (2)  NOT NULL,
    [sku]             NVARCHAR (20) NOT NULL,
    [price]           INT           DEFAULT (NULL) NULL,
    [min_model_years] INT           DEFAULT (NULL) NULL,
    [max_model_years] INT           DEFAULT (NULL) NULL,
    [min_model_km]    INT           DEFAULT (NULL) NULL,
    [max_model_km]    INT           DEFAULT (NULL) NULL,
    [type]            NVARCHAR (9)  DEFAULT (NULL) NULL,
    [per_claim]       INT           DEFAULT (NULL) NULL,
    CONSTRAINT [PK_motorcycle_warranty_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [motorcycle_warranty_products$motorcycle_warranty_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_warranty_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_warranty_products';


GO

