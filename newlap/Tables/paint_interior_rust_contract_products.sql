CREATE TABLE [newlap].[paint_interior_rust_contract_products] (
    [id]            BIGINT         IDENTITY (2624, 1) NOT NULL,
    [contract_id]   BIGINT         NOT NULL,
    [product_id]    BIGINT         NOT NULL,
    [product_price] INT            DEFAULT (NULL) NULL,
    [product_type]  NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_paint_interior_rust_contract_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [paint_interior_rust_contract_products$protection_plus_contract_products_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[paint_interior_rust_contracts] ([id]),
    CONSTRAINT [paint_interior_rust_contract_products$protection_plus_contract_products_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[paint_interior_rust_products] ([id])
);


GO

CREATE NONCLUSTERED INDEX [protection_plus_contract_products_product_id_foreign]
    ON [newlap].[paint_interior_rust_contract_products]([product_id] ASC);


GO

CREATE NONCLUSTERED INDEX [protection_plus_contract_products_contract_id_foreign]
    ON [newlap].[paint_interior_rust_contract_products]([contract_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.paint_interior_rust_contract_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'paint_interior_rust_contract_products';


GO

