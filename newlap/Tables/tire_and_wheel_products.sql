CREATE TABLE [newlap].[tire_and_wheel_products] (
    [id]                BIGINT         IDENTITY (34, 1) NOT NULL,
    [name]              NVARCHAR (191) NOT NULL,
    [description]       NVARCHAR (MAX) NULL,
    [type]              NVARCHAR (8)   NOT NULL,
    [sku]               NVARCHAR (20)  NOT NULL,
    [price]             INT            DEFAULT (NULL) NULL,
    [ec_classification] NVARCHAR (20)  DEFAULT (NULL) NULL,
    [term_months]       NVARCHAR (2)   DEFAULT (NULL) NULL,
    [max_model_years]   BIGINT         DEFAULT (NULL) NULL,
    [deleted_at]        DATETIME       DEFAULT (NULL) NULL,
    [daa_rate]          INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_tire_and_wheel_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [tire_and_wheel_products$peace_of_mind_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.tire_and_wheel_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'tire_and_wheel_products';


GO

