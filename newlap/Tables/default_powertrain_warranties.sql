CREATE TABLE [newlap].[default_powertrain_warranties] (
    [id]                          BIGINT         IDENTITY (710, 1) NOT NULL,
    [manufacturer_id]             BIGINT         NOT NULL,
    [year]                        INT            NOT NULL,
    [months]                      INT            NOT NULL,
    [mileage]                     INT            DEFAULT (NULL) NULL,
    [corresponding_product_id]    BIGINT         NOT NULL,
    [corresponding_bc_product_id] INT            DEFAULT (NULL) NULL,
    [conditions]                  NVARCHAR (255) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_default_powertrain_warranties_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [default_powertrain_warranties$default_powertrain_warranties_corresponding_product_id_foreign] FOREIGN KEY ([corresponding_product_id]) REFERENCES [newlap].[warranty_products_cgw] ([id]),
    CONSTRAINT [default_powertrain_warranties$default_powertrain_warranties_manufacturer_id_foreign] FOREIGN KEY ([manufacturer_id]) REFERENCES [newlap].[manufacturers] ([id])
);


GO

CREATE NONCLUSTERED INDEX [default_powertrain_warranties_corresponding_product_id_foreign]
    ON [newlap].[default_powertrain_warranties]([corresponding_product_id] ASC);


GO

CREATE NONCLUSTERED INDEX [default_powertrain_warranties_manufacturer_id_foreign]
    ON [newlap].[default_powertrain_warranties]([manufacturer_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.default_powertrain_warranties', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'default_powertrain_warranties';


GO

