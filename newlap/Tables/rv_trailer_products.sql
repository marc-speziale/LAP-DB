CREATE TABLE [newlap].[rv_trailer_products] (
    [id]           BIGINT         IDENTITY (23, 1) NOT NULL,
    [term_months]  NVARCHAR (2)   NOT NULL,
    [claim_amount] NVARCHAR (191) DEFAULT (NULL) NULL,
    [sku]          NVARCHAR (20)  NOT NULL,
    [price]        INT            NOT NULL,
    [unit_type]    NVARCHAR (9)   DEFAULT (NULL) NULL,
    [type]         NVARCHAR (8)   DEFAULT (NULL) NULL,
    [max_years]    INT            NOT NULL,
    [max_km]       INT            DEFAULT (NULL) NULL,
    [daa_rate]     INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_rv_trailer_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [rv_trailer_products$rv_trailer_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rv_trailer_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'rv_trailer_products';


GO

