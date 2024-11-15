CREATE TABLE [newlap].[sales_projection_sku_types] (
    [id]               BIGINT         IDENTITY (24, 1) NOT NULL,
    [contract_type_id] BIGINT         NOT NULL,
    [sku_type]         NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_sales_projection_sku_types_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [sales_projection_sku_types$sales_projection_sku_types_contract_type_id_foreign] FOREIGN KEY ([contract_type_id]) REFERENCES [newlap].[sales_projection_contract_types] ([id])
);


GO

CREATE NONCLUSTERED INDEX [sales_projection_sku_types_contract_type_id_foreign]
    ON [newlap].[sales_projection_sku_types]([contract_type_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.sales_projection_sku_types', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'sales_projection_sku_types';


GO

