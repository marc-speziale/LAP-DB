CREATE TABLE [newlap].[rust_assure_contract_products] (
    [id]            BIGINT IDENTITY (2822, 1) NOT NULL,
    [product_id]    BIGINT NOT NULL,
    [contract_id]   BIGINT NOT NULL,
    [product_price] INT    DEFAULT (NULL) NULL,
    CONSTRAINT [PK_rust_assure_contract_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [rust_assure_contract_products$protection_product_contract_products_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[rust_assure_contracts] ([id])
);


GO

CREATE NONCLUSTERED INDEX [protection_product_contract_products_contract_id_foreign]
    ON [newlap].[rust_assure_contract_products]([contract_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rust_assure_contract_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'rust_assure_contract_products';


GO

