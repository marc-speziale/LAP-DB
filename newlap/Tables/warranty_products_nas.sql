CREATE TABLE [newlap].[warranty_products_nas] (
    [id]              BIGINT         IDENTITY (37, 1) NOT NULL,
    [display]         NVARCHAR (191) NOT NULL,
    [term]            NVARCHAR (8)   DEFAULT (NULL) NULL,
    [distance]        NVARCHAR (9)   DEFAULT (NULL) NULL,
    [detail]          NVARCHAR (20)  NOT NULL,
    [type]            NVARCHAR (10)  DEFAULT (NULL) NULL,
    [sku]             NVARCHAR (20)  NOT NULL,
    [price]           INT            DEFAULT (NULL) NULL,
    [max_model_km]    BIGINT         DEFAULT (NULL) NULL,
    [max_model_years] INT            DEFAULT (NULL) NULL,
    [claim_amount]    NVARCHAR (191) DEFAULT (NULL) NULL,
    [deleted_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_products_nas_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_nas$warranty_products_nas_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_nas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_nas';


GO

