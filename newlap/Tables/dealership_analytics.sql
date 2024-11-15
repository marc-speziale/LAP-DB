CREATE TABLE [newlap].[dealership_analytics] (
    [id]            BIGINT         IDENTITY (161635, 1) NOT NULL,
    [dealership_id] BIGINT         NOT NULL,
    [type]          NVARCHAR (8)   DEFAULT (N'warranty') NOT NULL,
    [data]          NVARCHAR (MAX) NOT NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_dealership_analytics_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [analytics_dealership_id_foreign]
    ON [newlap].[dealership_analytics]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealership_analytics', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealership_analytics';


GO

