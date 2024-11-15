CREATE TABLE [newlap].[warranty_products_ca] (
    [id]                     BIGINT         IDENTITY (85, 1) NOT NULL,
    [term_years]             NVARCHAR (1)   DEFAULT (NULL) NULL,
    [term_distance]          NVARCHAR (6)   DEFAULT (NULL) NULL,
    [coverage_type]          NVARCHAR (19)  DEFAULT (NULL) NULL,
    [drivetrain_eligibility] NVARCHAR (7)   DEFAULT (NULL) NULL,
    [max_model_years]        BIGINT         DEFAULT (NULL) NULL,
    [max_model_km]           BIGINT         DEFAULT (NULL) NULL,
    [sku]                    NVARCHAR (20)  DEFAULT (NULL) NULL,
    [price]                  INT            DEFAULT (NULL) NULL,
    [whitelabel_id]          BIGINT         DEFAULT (NULL) NULL,
    [whitelabel_type]        NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_products_ca_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_products_ca';


GO

