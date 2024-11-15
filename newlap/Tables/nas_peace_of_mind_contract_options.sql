CREATE TABLE [newlap].[nas_peace_of_mind_contract_options] (
    [id]            BIGINT IDENTITY (67, 1) NOT NULL,
    [option_id]     BIGINT NOT NULL,
    [contract_id]   BIGINT NOT NULL,
    [product_price] INT    DEFAULT (NULL) NULL,
    CONSTRAINT [PK_nas_peace_of_mind_contract_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [nas_peace_of_mind_contract_options$nas_peace_of_mind_contract_options_contract_id_foreign] FOREIGN KEY ([contract_id]) REFERENCES [newlap].[nas_peace_of_mind_contracts] ([id])
);


GO

CREATE NONCLUSTERED INDEX [nas_peace_of_mind_contract_options_contract_id_foreign]
    ON [newlap].[nas_peace_of_mind_contract_options]([contract_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_peace_of_mind_contract_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'nas_peace_of_mind_contract_options';


GO

