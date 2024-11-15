CREATE TABLE [newlap].[dealership_contract_type] (
    [dealership_id]    BIGINT NOT NULL,
    [contract_type_id] BIGINT NOT NULL,
    CONSTRAINT [dealership_contract_type$dealership_contract_type_contract_type_id_foreign] FOREIGN KEY ([contract_type_id]) REFERENCES [newlap].[contract_types] ([id]),
    CONSTRAINT [dealership_contract_type$dealership_contract_type_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [dealership_contract_type_dealership_id_foreign]
    ON [newlap].[dealership_contract_type]([dealership_id] ASC);


GO

CREATE NONCLUSTERED INDEX [dealership_contract_type_contract_type_id_foreign]
    ON [newlap].[dealership_contract_type]([contract_type_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealership_contract_type', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealership_contract_type';


GO

