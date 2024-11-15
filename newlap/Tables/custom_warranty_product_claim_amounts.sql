CREATE TABLE [newlap].[custom_warranty_product_claim_amounts] (
    [id]            BIGINT         IDENTITY (14, 1) NOT NULL,
    [dealership_id] BIGINT         NOT NULL,
    [product_id]    BIGINT         NOT NULL,
    [product_type]  NVARCHAR (191) NOT NULL,
    [claim_amount]  INT            NOT NULL,
    CONSTRAINT [PK_custom_warranty_product_claim_amounts_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [custom_warranty_product_claim_amounts$custom_warranty_product_claim_amounts_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [custom_warranty_product_claim_amounts_dealership_id_foreign]
    ON [newlap].[custom_warranty_product_claim_amounts]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.custom_warranty_product_claim_amounts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'custom_warranty_product_claim_amounts';


GO

