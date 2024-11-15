CREATE TABLE [newlap].[custom_lloyds_costs] (
    [id]            BIGINT         IDENTITY (496, 1) NOT NULL,
    [sku_id]        BIGINT         NOT NULL,
    [sku_type]      NVARCHAR (191) NOT NULL,
    [cost]          BIGINT         NOT NULL,
    [effective_at]  DATETIME       DEFAULT (getdate()) NOT NULL,
    [dealership_id] BIGINT         NOT NULL,
    CONSTRAINT [PK_custom_lloyds_costs_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [custom_lloyds_costs$custom_lloyds_costs_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [custom_lloyds_costs_dealership_id_foreign]
    ON [newlap].[custom_lloyds_costs]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.custom_lloyds_costs', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'custom_lloyds_costs';


GO

