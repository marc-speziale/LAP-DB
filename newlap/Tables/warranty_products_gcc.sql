CREATE TABLE [newlap].[warranty_products_gcc] (
    [id]                  BIGINT         IDENTITY (23, 1) NOT NULL,
    [type]                NVARCHAR (15)  NOT NULL,
    [sku]                 NVARCHAR (20)  NOT NULL,
    [term]                NVARCHAR (2)   NOT NULL,
    [distance]            NVARCHAR (6)   DEFAULT (NULL) NULL,
    [price]               INT            DEFAULT (NULL) NULL,
    [claim_amount]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [max_model_years]     BIGINT         NOT NULL,
    [max_model_km]        BIGINT         DEFAULT (NULL) NULL,
    [commercial_eligible] SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_warranty_products_gcc_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_products_gcc$warranty_products_gcc_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_gcc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_gcc';


GO

