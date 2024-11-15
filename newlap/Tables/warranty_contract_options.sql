CREATE TABLE [newlap].[warranty_contract_options] (
    [id]            BIGINT         IDENTITY (15275, 1) NOT NULL,
    [option_id]     BIGINT         NOT NULL,
    [option_type]   NVARCHAR (191) DEFAULT (NULL) NULL,
    [contract_id]   BIGINT         NOT NULL,
    [product_price] INT            DEFAULT (NULL) NULL,
    [editable]      SMALLINT       DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_warranty_contract_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [warranty_contract_options$warranty_contract_options_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[warranty_contracts] ([id])
);


GO

CREATE NONCLUSTERED INDEX [warranty_contract_options_contract_id_foreign]
    ON [newlap].[warranty_contract_options]([contract_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_contract_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_contract_options';


GO

