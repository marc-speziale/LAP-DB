CREATE TABLE [newlap].[models] (
    [id]              BIGINT         IDENTITY (827, 1) NOT NULL,
    [manufacturer_id] BIGINT         NOT NULL,
    [model]           NVARCHAR (191) NOT NULL,
    [class]           NVARCHAR (191) DEFAULT (NULL) NULL,
    [cn_available]    SMALLINT       DEFAULT ((1)) NOT NULL,
    [cn_luxury]       SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_models_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [models$models_manufacturer_id_foreign] FOREIGN KEY ([manufacturer_id]) REFERENCES [newlap].[manufacturers] ([id])
);


GO

CREATE NONCLUSTERED INDEX [models_manufacturer_id_foreign]
    ON [newlap].[models]([manufacturer_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.models', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'models';


GO

