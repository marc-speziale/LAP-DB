CREATE TABLE [newlap].[motorcycle_manufacturers] (
    [id]    BIGINT         IDENTITY (21, 1) NOT NULL,
    [name]  NVARCHAR (191) NOT NULL,
    [class] NVARCHAR (1)   DEFAULT (NULL) NULL,
    CONSTRAINT [PK_motorcycle_manufacturers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_manufacturers', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'motorcycle_manufacturers';


GO

