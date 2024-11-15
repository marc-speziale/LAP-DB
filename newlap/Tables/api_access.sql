CREATE TABLE [newlap].[api_access] (
    [id]            BIGINT   IDENTITY (1, 1) NOT NULL,
    [dealership_id] BIGINT   NOT NULL,
    [granted_at]    DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_api_access_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [api_access$api_access_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [api_access_dealership_id_foreign]
    ON [newlap].[api_access]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.api_access', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'api_access';


GO

