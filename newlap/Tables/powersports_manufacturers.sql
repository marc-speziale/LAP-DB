CREATE TABLE [newlap].[powersports_manufacturers] (
    [id]         BIGINT         IDENTITY (52, 1) NOT NULL,
    [name]       NVARCHAR (191) NOT NULL,
    [type]       NVARCHAR (191) NOT NULL,
    [class]      INT            DEFAULT (NULL) NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_powersports_manufacturers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_manufacturers', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_manufacturers';


GO

