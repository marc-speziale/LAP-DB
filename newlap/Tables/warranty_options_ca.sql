CREATE TABLE [newlap].[warranty_options_ca] (
    [id]              BIGINT         IDENTITY (6, 1) NOT NULL,
    [name]            NVARCHAR (100) DEFAULT (NULL) NULL,
    [sku]             NVARCHAR (20)  DEFAULT (NULL) NULL,
    [price]           INT            DEFAULT (NULL) NULL,
    [whitelabel_id]   BIGINT         DEFAULT (NULL) NULL,
    [whitelabel_type] NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warranty_options_ca_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_options_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'warranty_options_ca';


GO

