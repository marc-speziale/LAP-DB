CREATE TABLE [newlap].[rv_trailer_products_bc] (
    [id]           BIGINT         IDENTITY (23, 1) NOT NULL,
    [term_months]  NVARCHAR (2)   NOT NULL,
    [claim_amount] NVARCHAR (191) DEFAULT (NULL) NULL,
    [sku]          NVARCHAR (20)  NOT NULL,
    [price]        INT            NOT NULL,
    [unit_type]    NVARCHAR (9)   NOT NULL,
    [type]         NVARCHAR (8)   NOT NULL,
    [max_years]    INT            NOT NULL,
    [max_km]       INT            DEFAULT (NULL) NULL,
    [daa_rate]     INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_rv_trailer_products_bc_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [rv_trailer_products_bc$rv_trailer_products_bc_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rv_trailer_products_bc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'rv_trailer_products_bc';


GO

