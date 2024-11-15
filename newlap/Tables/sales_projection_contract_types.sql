CREATE TABLE [newlap].[sales_projection_contract_types] (
    [id]            BIGINT         IDENTITY (16, 1) NOT NULL,
    [contract_type] NVARCHAR (191) NOT NULL,
    [group_id]      BIGINT         NOT NULL,
    CONSTRAINT [PK_sales_projection_contract_types_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [sales_projection_contract_types$sales_projection_contract_types_group_id_foreign] FOREIGN KEY ([group_id]) REFERENCES [newlap].[sales_projection_groups] ([id])
);


GO

CREATE NONCLUSTERED INDEX [sales_projection_contract_types_group_id_foreign]
    ON [newlap].[sales_projection_contract_types]([group_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.sales_projection_contract_types', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'sales_projection_contract_types';


GO

