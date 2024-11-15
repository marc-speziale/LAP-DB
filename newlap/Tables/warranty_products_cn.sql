CREATE TABLE [newlap].[warranty_products_cn] (
    [id]              BIGINT         IDENTITY (66, 1) NOT NULL,
    [display]         NVARCHAR (191) NOT NULL,
    [term]            NVARCHAR (13)  NOT NULL,
    [distance]        NVARCHAR (12)  NOT NULL,
    [detail]          NVARCHAR (20)  NOT NULL,
    [type]            NVARCHAR (10)  NOT NULL,
    [sku]             NVARCHAR (20)  NOT NULL,
    [price]           INT            DEFAULT (NULL) NULL,
    [max_model_years] BIGINT         DEFAULT (NULL) NULL,
    [max_model_km]    BIGINT         DEFAULT (NULL) NULL,
    [luxury]          SMALLINT       DEFAULT ((0)) NOT NULL,
    [awd]             SMALLINT       DEFAULT ((0)) NULL,
    CONSTRAINT [PK_warranty_products_cn_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_cn$warranty_products_cn_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cn', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_cn';


GO

