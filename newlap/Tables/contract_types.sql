CREATE TABLE [newlap].[contract_types] (
    [id]                  BIGINT         IDENTITY (21, 1) NOT NULL,
    [name]                NVARCHAR (191) NOT NULL,
    [pdf]                 NVARCHAR (191) NOT NULL,
    [active]              SMALLINT       DEFAULT ((1)) NOT NULL,
    [product_category_id] BIGINT         DEFAULT (NULL) NULL,
    [slug]                NVARCHAR (191) DEFAULT (NULL) NULL,
    [class]               NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_contract_types_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.contract_types', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'contract_types';


GO

