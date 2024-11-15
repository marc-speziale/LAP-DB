CREATE TABLE [newlap].[warranty_products_cgw] (
    [id]                  BIGINT         IDENTITY (213, 1) NOT NULL,
    [display]             NVARCHAR (191) DEFAULT (NULL) NULL,
    [term]                NVARCHAR (13)  NOT NULL,
    [distance]            NVARCHAR (12)  NOT NULL,
    [detail]              NVARCHAR (20)  NOT NULL,
    [type]                NVARCHAR (21)  NOT NULL,
    [sku]                 NVARCHAR (20)  NOT NULL,
    [price]               INT            DEFAULT (NULL) NULL,
    [max_model_years]     BIGINT         DEFAULT (NULL) NULL,
    [max_model_km]        BIGINT         DEFAULT (NULL) NULL,
    [dealer_cost]         INT            DEFAULT (NULL) NULL,
    [claim_amount]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [commercial_eligible] SMALLINT       DEFAULT ((1)) NOT NULL,
    [deleted_at]          DATETIME       DEFAULT (NULL) NULL,
    [pdf_template_dir]    NVARCHAR (191) DEFAULT (NULL) NULL,
    [daa_rate]            INT            DEFAULT (NULL) NULL,
    [6year_premium]       INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_products_cgw_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_cgw$warranty_products_cgw_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_cgw';


GO
