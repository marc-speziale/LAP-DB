CREATE TABLE [newlap].[motorcycle_contract_options] (
    [id]            BIGINT IDENTITY (24, 1) NOT NULL,
    [option_id]     BIGINT NOT NULL,
    [contract_id]   BIGINT NOT NULL,
    [product_price] INT    DEFAULT (NULL) NULL,
    CONSTRAINT [PK_motorcycle_contract_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [motorcycle_contract_options$motorcycle_contract_options_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[motorcycle_contracts] ([id]),
    CONSTRAINT [motorcycle_contract_options$motorcycle_contract_options_option_id_foreign] FOREIGN KEY ([option_id]) REFERENCES [newlap].[motorcycle_options] ([id])
);


GO

CREATE NONCLUSTERED INDEX [motorcycle_contract_options_contract_id_foreign]
    ON [newlap].[motorcycle_contract_options]([contract_id] ASC);


GO

CREATE NONCLUSTERED INDEX [motorcycle_contract_options_option_id_foreign]
    ON [newlap].[motorcycle_contract_options]([option_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_contract_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_contract_options';


GO

