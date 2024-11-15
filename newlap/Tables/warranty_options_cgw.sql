CREATE TABLE [newlap].[warranty_options_cgw] (
    [id]          BIGINT         IDENTITY (23, 1) NOT NULL,
    [name]        NVARCHAR (100) NOT NULL,
    [sku]         NVARCHAR (20)  NOT NULL,
    [price]       INT            DEFAULT (NULL) NULL,
    [dealer_cost] INT            DEFAULT (NULL) NULL,
    [deleted_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_options_cgw_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_options_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_options_cgw';


GO

