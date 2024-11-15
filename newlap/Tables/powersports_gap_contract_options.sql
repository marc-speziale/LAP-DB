CREATE TABLE [newlap].[powersports_gap_contract_options] (
    [id]            BIGINT         IDENTITY (10, 1) NOT NULL,
    [option_id]     BIGINT         NOT NULL,
    [option_type]   NVARCHAR (191) DEFAULT (NULL) NULL,
    [contract_id]   BIGINT         NOT NULL,
    [product_price] INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_powersports_gap_contract_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [powersports_gap_contract_options$powersports_gap_contract_options_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[powersports_gap_contracts] ([id])
);


GO

CREATE NONCLUSTERED INDEX [powersports_gap_contract_options_contract_id_foreign]
    ON [newlap].[powersports_gap_contract_options]([contract_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_gap_contract_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_gap_contract_options';


GO

