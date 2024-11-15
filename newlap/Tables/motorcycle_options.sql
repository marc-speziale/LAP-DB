CREATE TABLE [newlap].[motorcycle_options] (
    [id]         BIGINT         IDENTITY (3, 1) NOT NULL,
    [name]       NVARCHAR (100) NOT NULL,
    [sku]        NVARCHAR (20)  NOT NULL,
    [price]      INT            DEFAULT (NULL) NULL,
    [deleted_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_motorcycle_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [motorcycle_options$motorcycle_options_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_options';


GO

