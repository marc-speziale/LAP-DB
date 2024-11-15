CREATE TABLE [newlap].[commissions_settings] (
    [id]                       BIGINT         IDENTITY (1, 1) NOT NULL,
    [dealership_assignment_id] BIGINT         NOT NULL,
    [product_id]               BIGINT         DEFAULT (NULL) NULL,
    [product_type]             NVARCHAR (191) NOT NULL,
    [commission_formula_id]    BIGINT         DEFAULT (NULL) NULL,
    [rebate_formula_id]        BIGINT         DEFAULT (NULL) NULL,
    [spiff_formula_id]         BIGINT         DEFAULT (NULL) NULL,
    [created_at]               DATETIME       DEFAULT (NULL) NULL,
    [updated_at]               DATETIME       DEFAULT (NULL) NULL,
    [deleted_at]               DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_commissions_settings_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [commissions_settings$commissions_settings_dealership_assignment_id_foreign] FOREIGN KEY ([dealership_assignment_id]) REFERENCES [newlap].[dealership_assignments] ([id])
);


GO

CREATE NONCLUSTERED INDEX [commissions_settings_product_id_index]
    ON [newlap].[commissions_settings]([product_id] ASC);


GO

CREATE NONCLUSTERED INDEX [commissions_settings_dealership_assignment_id_foreign]
    ON [newlap].[commissions_settings]([dealership_assignment_id] ASC);


GO

CREATE NONCLUSTERED INDEX [commissions_settings_product_type_index]
    ON [newlap].[commissions_settings]([product_type] ASC);


GO

CREATE NONCLUSTERED INDEX [commissions_settings_commission_formula_id_index]
    ON [newlap].[commissions_settings]([commission_formula_id] ASC);


GO

CREATE NONCLUSTERED INDEX [commissions_settings_rebate_formula_id_index]
    ON [newlap].[commissions_settings]([rebate_formula_id] ASC);


GO

CREATE NONCLUSTERED INDEX [commissions_settings_spiff_formula_id_index]
    ON [newlap].[commissions_settings]([spiff_formula_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.commissions_settings', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'commissions_settings';


GO

