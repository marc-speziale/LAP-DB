CREATE TABLE [newlap].[option_types] (
    [id]              BIGINT         IDENTITY (16, 1) NOT NULL,
    [class]           NVARCHAR (191) NOT NULL,
    [name]            NVARCHAR (191) DEFAULT (NULL) NULL,
    [product_type_id] BIGINT         NOT NULL,
    CONSTRAINT [PK_option_types_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [option_types$option_types_product_type_id_foreign] FOREIGN KEY ([product_type_id]) REFERENCES [newlap].[product_types] ([id]),
    CONSTRAINT [option_types$option_types_class_name_unique] UNIQUE NONCLUSTERED ([class] ASC, [name] ASC)
);


GO

CREATE NONCLUSTERED INDEX [option_types_product_type_id_foreign]
    ON [newlap].[option_types]([product_type_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.option_types', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'option_types';


GO

