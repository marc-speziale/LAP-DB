CREATE TABLE [newlap].[warranty_products_ag] (
    [id]              BIGINT         IDENTITY (8, 1) NOT NULL,
    [display]         NVARCHAR (191) NOT NULL,
    [term]            NVARCHAR (8)   NOT NULL,
    [distance]        NVARCHAR (12)  NOT NULL,
    [detail]          NVARCHAR (20)  NOT NULL,
    [sku]             NVARCHAR (20)  NOT NULL,
    [price]           INT            DEFAULT (NULL) NULL,
    [type]            NVARCHAR (10)  NOT NULL,
    [max_model_years] BIGINT         DEFAULT (NULL) NULL,
    [max_model_km]    BIGINT         DEFAULT (NULL) NULL,
    [claim_amount]    NVARCHAR (191) DEFAULT (NULL) NULL,
    [daa_rate]        INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_products_ag_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_ag$warranty_products_ag_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ag', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_ag';


GO

