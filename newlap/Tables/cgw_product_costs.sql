CREATE TABLE [newlap].[cgw_product_costs] (
    [product_id]    BIGINT         NOT NULL,
    [product_type]  NVARCHAR (191) DEFAULT (NULL) NULL,
    [dealership_id] BIGINT         NOT NULL,
    [price]         INT            DEFAULT (NULL) NULL,
    CONSTRAINT [cgw_product_costs$cgw_product_costs_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [cgw_product_costs_dealership_id_foreign]
    ON [newlap].[cgw_product_costs]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.cgw_product_costs', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'cgw_product_costs';


GO

