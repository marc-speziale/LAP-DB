CREATE TABLE [newlap].[tire_and_wheel_contract_products] (
    [id]            BIGINT         IDENTITY (1020, 1) NOT NULL,
    [contract_id]   BIGINT         NOT NULL,
    [product_id]    BIGINT         NOT NULL,
    [product_price] INT            DEFAULT (NULL) NULL,
    [product_type]  NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_tire_and_wheel_contract_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [tire_and_wheel_contract_products$peace_mind_contract_products_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[tire_and_wheel_contracts] ([id])
);


GO

CREATE NONCLUSTERED INDEX [peace_mind_contract_products_product_id_foreign]
    ON [newlap].[tire_and_wheel_contract_products]([product_id] ASC);


GO

CREATE NONCLUSTERED INDEX [peace_mind_contract_products_contract_id_foreign]
    ON [newlap].[tire_and_wheel_contract_products]([contract_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.tire_and_wheel_contract_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'tire_and_wheel_contract_products';


GO

