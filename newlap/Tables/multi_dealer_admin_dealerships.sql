CREATE TABLE [newlap].[multi_dealer_admin_dealerships] (
    [id]                    BIGINT   IDENTITY (328, 1) NOT NULL,
    [multi_dealer_admin_id] BIGINT   NOT NULL,
    [dealership_id]         BIGINT   NOT NULL,
    [created_at]            DATETIME DEFAULT (NULL) NULL,
    [updated_at]            DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_multi_dealer_admin_dealerships_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [multi_dealer_admin_dealerships$multi_dealer_admin_dealerships_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [multi_dealer_admin_dealerships$multi_dealer_admin_dealerships_multi_dealer_admin_id_foreign] FOREIGN KEY ([multi_dealer_admin_id]) REFERENCES [newlap].[multi_dealer_admins] ([id])
);


GO

CREATE NONCLUSTERED INDEX [multi_dealer_admin_dealerships_multi_dealer_admin_id_foreign]
    ON [newlap].[multi_dealer_admin_dealerships]([multi_dealer_admin_id] ASC);


GO

CREATE NONCLUSTERED INDEX [multi_dealer_admin_dealerships_dealership_id_foreign]
    ON [newlap].[multi_dealer_admin_dealerships]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.multi_dealer_admin_dealerships', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'multi_dealer_admin_dealerships';


GO

