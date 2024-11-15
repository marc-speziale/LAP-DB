CREATE TABLE [newlap].[account_admin_managements] (
    [id]                     BIGINT   IDENTITY (4, 1) NOT NULL,
    [account_admin_id]       BIGINT   NOT NULL,
    [multi_account_admin_id] BIGINT   NOT NULL,
    [created_at]             DATETIME DEFAULT (NULL) NULL,
    [updated_at]             DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_account_admin_managements_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [account_admin_managements$account_admin_managements_account_admin_id_foreign] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id]),
    CONSTRAINT [account_admin_managements$account_admin_managements_multi_account_admin_id_foreign] FOREIGN KEY ([multi_account_admin_id]) REFERENCES [newlap].[multi_account_admins] ([id])
);


GO

CREATE NONCLUSTERED INDEX [account_admin_managements_account_admin_id_foreign]
    ON [newlap].[account_admin_managements]([account_admin_id] ASC);


GO

CREATE NONCLUSTERED INDEX [account_admin_managements_multi_account_admin_id_foreign]
    ON [newlap].[account_admin_managements]([multi_account_admin_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.account_admin_managements', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'account_admin_managements';


GO

