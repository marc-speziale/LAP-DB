CREATE TABLE [newlap].[abilities] (
    [id]   BIGINT         IDENTITY (5, 1) NOT NULL,
    [name] NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_abilities_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.abilities', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'abilities';


GO

