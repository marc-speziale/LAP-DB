CREATE TABLE [newlap].[theft_roadside_products] (
    [id]          BIGINT        IDENTITY (6, 1) NOT NULL,
    [sku]         NVARCHAR (20) NOT NULL,
    [price]       INT           DEFAULT (NULL) NULL,
    [daa_rate]    INT           DEFAULT (NULL) NULL,
    [term_months] NVARCHAR (2)  NOT NULL,
    CONSTRAINT [PK_theft_roadside_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [theft_roadside_products$theft_roadside_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.theft_roadside_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'theft_roadside_products';


GO

