CREATE TABLE [newlap].[dealership_assignments] (
    [account_admin_id]    BIGINT   NOT NULL,
    [dealership_id]       BIGINT   NOT NULL,
    [product_category_id] BIGINT   NOT NULL,
    [created_at]          DATETIME DEFAULT (NULL) NULL,
    [updated_at]          DATETIME DEFAULT (NULL) NULL,
    [deleted_at]          DATETIME DEFAULT (NULL) NULL,
    [id]                  BIGINT   IDENTITY (2313, 1) NOT NULL,
    CONSTRAINT [PK_dealership_assignments_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [dealership_assignments$dealership_assignments_account_admin_id_foreign] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id]),
    CONSTRAINT [dealership_assignments$dealership_assignments_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [dealership_assignments$dealership_assignments_product_category_id_foreign] FOREIGN KEY ([product_category_id]) REFERENCES [newlap].[product_categories] ([id])
);


GO

CREATE NONCLUSTERED INDEX [dealership_assignments_product_category_id_foreign]
    ON [newlap].[dealership_assignments]([product_category_id] ASC);


GO

CREATE NONCLUSTERED INDEX [dealership_assignments_dealership_id_product_category_id_unique]
    ON [newlap].[dealership_assignments]([dealership_id] ASC, [product_category_id] ASC);


GO

CREATE NONCLUSTERED INDEX [dealership_assignments_account_admin_id_foreign]
    ON [newlap].[dealership_assignments]([account_admin_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealership_assignments', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealership_assignments';


GO

