CREATE TABLE [newlap].[nas_protection_plus_contract_products] (
    [id]            BIGINT IDENTITY (428, 1) NOT NULL,
    [contract_id]   BIGINT NOT NULL,
    [product_id]    BIGINT NOT NULL,
    [product_price] INT    DEFAULT (NULL) NULL,
    CONSTRAINT [PK_nas_protection_plus_contract_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [nas_protection_plus_contract_products$nas_protection_plus_contract_products_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[nas_protection_plus_contracts] ([id]),
    CONSTRAINT [nas_protection_plus_contract_products$nas_protection_plus_contract_products_product_id_foreign] FOREIGN KEY ([product_id]) REFERENCES [newlap].[nas_protection_plus_products] ([id])
);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contract_products_product_id_foreign]
    ON [newlap].[nas_protection_plus_contract_products]([product_id] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contract_products_contract_id_foreign]
    ON [newlap].[nas_protection_plus_contract_products]([contract_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_protection_plus_contract_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'nas_protection_plus_contract_products';


GO

