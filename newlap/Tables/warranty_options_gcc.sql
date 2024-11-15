CREATE TABLE [newlap].[warranty_options_gcc] (
    [id]    BIGINT         IDENTITY (6, 1) NOT NULL,
    [sku]   NVARCHAR (20)  NOT NULL,
    [name]  NVARCHAR (100) NOT NULL,
    [price] INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_options_gcc_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_options_gcc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_options_gcc';


GO

