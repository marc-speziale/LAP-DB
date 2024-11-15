CREATE TABLE [newlap].[account_admin_dealerships] (
    [id]               BIGINT   IDENTITY (13473, 1) NOT NULL,
    [account_admin_id] BIGINT   NOT NULL,
    [dealership_id]    BIGINT   NOT NULL,
    [created_at]       DATETIME DEFAULT (NULL) NULL,
    [updated_at]       DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_account_admin_dealerships_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [account_admin_dealerships$account_admin_dealerships_account_admin_id_foreign] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id]),
    CONSTRAINT [account_admin_dealerships$account_admin_dealerships_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [account_admin_dealerships_dealership_id_foreign]
    ON [newlap].[account_admin_dealerships]([dealership_id] ASC);


GO

CREATE NONCLUSTERED INDEX [account_admin_dealerships_account_admin_id_foreign]
    ON [newlap].[account_admin_dealerships]([account_admin_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.account_admin_dealerships', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'account_admin_dealerships';


GO

