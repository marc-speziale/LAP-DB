CREATE TABLE [newlap].[model_flags] (
    [id]       BIGINT        IDENTITY (100, 1) NOT NULL,
    [model_id] BIGINT        NOT NULL,
    [name]     NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_model_flags_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [model_flags$model_flags_model_id_foreign] FOREIGN KEY ([model_id]) REFERENCES [newlap].[models] ([id])
);


GO

CREATE NONCLUSTERED INDEX [model_flags_model_id_foreign]
    ON [newlap].[model_flags]([model_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.model_flags', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'model_flags';


GO

