CREATE TABLE [newlap].[peace_of_mind_extra_products] (
    [id]       BIGINT        IDENTITY (16, 1) NOT NULL,
    [sku]      NVARCHAR (20) NOT NULL,
    [type]     NVARCHAR (14) NOT NULL,
    [term]     NVARCHAR (9)  NOT NULL,
    [price]    INT           DEFAULT (NULL) NULL,
    [daa_rate] INT           DEFAULT (NULL) NULL,
    CONSTRAINT [PK_peace_of_mind_extra_products_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [peace_of_mind_extra_products$peace_of_mind_extra_products_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.peace_of_mind_extra_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'peace_of_mind_extra_products';


GO

