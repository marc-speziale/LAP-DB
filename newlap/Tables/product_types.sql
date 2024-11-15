CREATE TABLE [newlap].[product_types] (
    [id]               BIGINT         IDENTITY (34, 1) NOT NULL,
    [name]             NVARCHAR (191) DEFAULT (NULL) NULL,
    [class]            NVARCHAR (191) NOT NULL,
    [contract_type_id] BIGINT         NOT NULL,
    [active]           SMALLINT       DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_product_types_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [product_types$product_types_contract_type_id_foreign] FOREIGN KEY ([contract_type_id]) REFERENCES [newlap].[contract_types] ([id]),
    CONSTRAINT [product_types$product_types_class_name_unique] UNIQUE NONCLUSTERED ([class] ASC, [name] ASC)
);


GO

CREATE NONCLUSTERED INDEX [product_types_contract_type_id_foreign]
    ON [newlap].[product_types]([contract_type_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.product_types', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'product_types';


GO

