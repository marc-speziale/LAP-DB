CREATE TABLE [newlap].[manufacturers] (
    [id]                BIGINT         IDENTITY (43, 1) NOT NULL,
    [name]              NVARCHAR (100) NOT NULL,
    [ec_classification] NVARCHAR (20)  DEFAULT (NULL) NULL,
    CONSTRAINT [PK_manufacturers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.manufacturers', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'manufacturers';


GO

