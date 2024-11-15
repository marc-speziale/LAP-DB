CREATE TABLE [newlap].[nas_peace_of_mind_options] (
    [id]         BIGINT         IDENTITY (3, 1) NOT NULL,
    [name]       NVARCHAR (100) NOT NULL,
    [sku]        NVARCHAR (20)  NOT NULL,
    [price]      INT            NOT NULL,
    [deleted_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_nas_peace_of_mind_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [nas_peace_of_mind_options$nas_peace_of_mind_options_sku_unique] UNIQUE NONCLUSTERED ([sku] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_peace_of_mind_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'nas_peace_of_mind_options';


GO

