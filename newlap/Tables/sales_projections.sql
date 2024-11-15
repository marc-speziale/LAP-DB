CREATE TABLE [newlap].[sales_projections] (
    [id]                        BIGINT   IDENTITY (3593, 1) NOT NULL,
    [projection_month_id]       BIGINT   NOT NULL,
    [account_admin_id]          BIGINT   NOT NULL,
    [sales_projection_group_id] BIGINT   NOT NULL,
    [projection]                BIGINT   DEFAULT (NULL) NULL,
    [actual]                    BIGINT   DEFAULT (NULL) NULL,
    [created_at]                DATETIME DEFAULT (NULL) NULL,
    [updated_at]                DATETIME DEFAULT (NULL) NULL,
    [deleted_at]                DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_sales_projections_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [sales_projections$sales_projections_account_admin_id_foreign] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id]),
    CONSTRAINT [sales_projections$sales_projections_projection_month_id_foreign] FOREIGN KEY ([projection_month_id]) REFERENCES [newlap].[sales_projection_months] ([id]),
    CONSTRAINT [sales_projections$sales_projections_sales_projection_group_id_foreign] FOREIGN KEY ([sales_projection_group_id]) REFERENCES [newlap].[sales_projection_groups] ([id])
);


GO

CREATE NONCLUSTERED INDEX [sales_projections_account_admin_id_foreign]
    ON [newlap].[sales_projections]([account_admin_id] ASC);


GO

CREATE NONCLUSTERED INDEX [sales_projections_projection_month_id_foreign]
    ON [newlap].[sales_projections]([projection_month_id] ASC);


GO

CREATE NONCLUSTERED INDEX [sales_projections_sales_projection_group_id_foreign]
    ON [newlap].[sales_projections]([sales_projection_group_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.sales_projections', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'sales_projections';


GO

