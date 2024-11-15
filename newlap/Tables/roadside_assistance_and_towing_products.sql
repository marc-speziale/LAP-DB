CREATE TABLE [newlap].[roadside_assistance_and_towing_products] (
    [id]          BIGINT         IDENTITY (6, 1) NOT NULL,
    [name]        NVARCHAR (191) NOT NULL,
    [sku]         NVARCHAR (20)  NOT NULL,
    [price]       INT            DEFAULT (NULL) NULL,
    [term_months] NVARCHAR (2)   DEFAULT (NULL) NULL,
    [deleted_at]  DATETIME       DEFAULT (NULL) NULL,
    [daa_rate]    INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_roadside_assistance_and_towing_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [roadside_assistance_and_towing_products$roadside_assistance_and_towing_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.roadside_assistance_and_towing_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'roadside_assistance_and_towing_products';


GO

