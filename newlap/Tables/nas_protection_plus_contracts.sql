CREATE TABLE [newlap].[nas_protection_plus_contracts] (
    [id]                        BIGINT         IDENTITY (443, 1) NOT NULL,
    [dealership_id]             BIGINT         DEFAULT (NULL) NULL,
    [owner_id]                  BIGINT         NOT NULL,
    [owner_type]                NVARCHAR (191) DEFAULT (NULL) NULL,
    [salesperson]               NVARCHAR (191) DEFAULT (N'') NOT NULL,
    [stock_number]              NVARCHAR (191) DEFAULT (NULL) NULL,
    [contract_number]           NVARCHAR (191) DEFAULT (NULL) NULL,
    [contract_price]            DECIMAL (8, 2) DEFAULT (NULL) NULL,
    [first_name]                NVARCHAR (191) NOT NULL,
    [last_name]                 NVARCHAR (191) NOT NULL,
    [address1]                  NVARCHAR (191) NOT NULL,
    [address2]                  NVARCHAR (191) DEFAULT (NULL) NULL,
    [city]                      NVARCHAR (191) NOT NULL,
    [province]                  NVARCHAR (191) NOT NULL,
    [country]                   NVARCHAR (191) NOT NULL,
    [postal_code]               NVARCHAR (20)  NOT NULL,
    [phone]                     NVARCHAR (191) NOT NULL,
    [birthdate]                 DATE           DEFAULT (NULL) NULL,
    [email]                     NVARCHAR (191) NOT NULL,
    [make]                      NVARCHAR (191) NOT NULL,
    [model]                     NVARCHAR (191) NOT NULL,
    [year]                      BIGINT         NOT NULL,
    [trim]                      NVARCHAR (191) NOT NULL,
    [vin]                       NVARCHAR (191) NOT NULL,
    [odometer]                  NVARCHAR (191) DEFAULT (NULL) NULL,
    [odometer_unit]             NVARCHAR (2)   DEFAULT (NULL) NULL,
    [vehicle_description]       NVARCHAR (4)   DEFAULT (N'new') NULL,
    [consumer_price]            NVARCHAR (191) DEFAULT (NULL) NULL,
    [finance_type]              NVARCHAR (7)   DEFAULT (N'finance') NULL,
    [lienholder]                NVARCHAR (100) DEFAULT (NULL) NULL,
    [comments]                  NVARCHAR (MAX) NULL,
    [status]                    NVARCHAR (9)   DEFAULT (N'pending') NOT NULL,
    [corrosion_protection_type] NVARCHAR (6)   DEFAULT (NULL) NULL,
    [no_warranty_rv]            SMALLINT       DEFAULT ((0)) NOT NULL,
    [effective_date]            DATE           DEFAULT (NULL) NULL,
    [voided_at]                 DATETIME       DEFAULT (NULL) NULL,
    [void_reason]               NVARCHAR (191) DEFAULT (NULL) NULL,
    [completed_at]              DATETIME       DEFAULT (NULL) NULL,
    [created_at]                DATETIME       DEFAULT (NULL) NULL,
    [updated_at]                DATETIME       DEFAULT (NULL) NULL,
    [account_admin_id]          BIGINT         DEFAULT (NULL) NULL,
    [tax_exempt]                SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_nas_protection_plus_contracts_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [nas_protection_plus_contracts$account_admin_nas_protection_plus_contracts] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id]),
    CONSTRAINT [nas_protection_plus_contracts$nas_protection_plus_contracts_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_dealership_id_foreign]
    ON [newlap].[nas_protection_plus_contracts]([dealership_id] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_created_at_index]
    ON [newlap].[nas_protection_plus_contracts]([created_at] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_vin_index]
    ON [newlap].[nas_protection_plus_contracts]([vin] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_first_name_index]
    ON [newlap].[nas_protection_plus_contracts]([first_name] ASC);


GO

CREATE NONCLUSTERED INDEX [account_admin_nas_protection_plus_contracts]
    ON [newlap].[nas_protection_plus_contracts]([account_admin_id] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_last_name_index]
    ON [newlap].[nas_protection_plus_contracts]([last_name] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_completed_at_index]
    ON [newlap].[nas_protection_plus_contracts]([completed_at] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_contract_number_index]
    ON [newlap].[nas_protection_plus_contracts]([contract_number] ASC);


GO

CREATE NONCLUSTERED INDEX [nas_protection_plus_contracts_status_index]
    ON [newlap].[nas_protection_plus_contracts]([status] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_protection_plus_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'nas_protection_plus_contracts';


GO

