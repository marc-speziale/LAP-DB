CREATE TABLE [newlap].[warranty_products_cgwbc] (
    [id]                  BIGINT         IDENTITY (151, 1) NOT NULL,
    [term_months]         NVARCHAR (3)   DEFAULT (NULL) NULL,
    [distance_km]         NVARCHAR (6)   DEFAULT (NULL) NULL,
    [detail]              NVARCHAR (20)  DEFAULT (NULL) NULL,
    [type]                NVARCHAR (21)  NOT NULL,
    [sku]                 NVARCHAR (20)  NOT NULL,
    [price]               INT            DEFAULT (NULL) NULL,
    [max_model_years]     BIGINT         NOT NULL,
    [max_model_km]        BIGINT         DEFAULT (NULL) NULL,
    [min_model_km]        BIGINT         DEFAULT (NULL) NULL,
    [claim_amount]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [dealer_cost]         INT            DEFAULT (NULL) NULL,
    [premium_rate]        INT            DEFAULT (NULL) NULL,
    [max_markup]          INT            DEFAULT (NULL) NULL,
    [commercial_eligible] SMALLINT       DEFAULT ((1)) NOT NULL,
    [deleted_at]          DATETIME       DEFAULT (NULL) NULL,
    [daa_rate]            INT            DEFAULT (NULL) NULL,
    [6year_premium]       INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_products_cgwbc_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_cgwbc$warranty_products_cgwbc_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_cgwbc';


GO

