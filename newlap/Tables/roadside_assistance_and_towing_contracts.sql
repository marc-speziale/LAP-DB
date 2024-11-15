CREATE TABLE [newlap].[roadside_assistance_and_towing_contracts] (
    [id]                     BIGINT         IDENTITY (354, 1) NOT NULL,
    [dealership_id]          BIGINT         DEFAULT (NULL) NULL,
    [owner_id]               BIGINT         NOT NULL,
    [owner_type]             NVARCHAR (191) DEFAULT (NULL) NULL,
    [salesperson]            NVARCHAR (191) DEFAULT (N'') NOT NULL,
    [stock_number]           NVARCHAR (191) DEFAULT (NULL) NULL,
    [product_id]             BIGINT         DEFAULT (NULL) NULL,
    [product_price]          INT            DEFAULT (NULL) NULL,
    [contract_number]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [contract_price]         DECIMAL (8, 2) DEFAULT (NULL) NULL,
    [first_name]             NVARCHAR (191) NOT NULL,
    [last_name]              NVARCHAR (191) NOT NULL,
    [address1]               NVARCHAR (191) NOT NULL,
    [address2]               NVARCHAR (191) DEFAULT (NULL) NULL,
    [city]                   NVARCHAR (191) NOT NULL,
    [province]               NVARCHAR (191) NOT NULL,
    [country]                NVARCHAR (191) NOT NULL,
    [postal_code]            NVARCHAR (20)  NOT NULL,
    [phone]                  NVARCHAR (191) NOT NULL,
    [birthdate]              DATE           DEFAULT (NULL) NULL,
    [email]                  NVARCHAR (191) NOT NULL,
    [make]                   NVARCHAR (191) NOT NULL,
    [model]                  NVARCHAR (191) NOT NULL,
    [year]                   BIGINT         NOT NULL,
    [trim]                   NVARCHAR (191) NOT NULL,
    [vin]                    NVARCHAR (191) NOT NULL,
    [num_cylinders]          INT            NOT NULL,
    [delivery_date]          DATE           NOT NULL,
    [in_service_date]        DATE           NOT NULL,
    [odometer]               NVARCHAR (191) NOT NULL,
    [odometer_unit]          NVARCHAR (2)   NOT NULL,
    [transmission]           NVARCHAR (9)   DEFAULT (N'Automatic') NOT NULL,
    [warranty_expired]       SMALLINT       DEFAULT ((0)) NOT NULL,
    [warranty_cancelled]     SMALLINT       DEFAULT ((0)) NOT NULL,
    [cancelled_warranty_okd] SMALLINT       DEFAULT ((0)) NOT NULL,
    [lienholder]             NVARCHAR (100) DEFAULT (NULL) NULL,
    [comments]               NVARCHAR (MAX) NULL,
    [status]                 NVARCHAR (9)   DEFAULT (N'pending') NOT NULL,
    [vehicle_usage]          NVARCHAR (10)  DEFAULT (N'personal') NULL,
    [transaction_type]       NVARCHAR (8)   DEFAULT (N'Purchase') NULL,
    [vintage]                NVARCHAR (4)   DEFAULT (N'New') NULL,
    [selling_price]          NVARCHAR (191) DEFAULT (NULL) NULL,
    [lease_cap_cost]         NVARCHAR (191) DEFAULT (NULL) NULL,
    [drivetrain]             NVARCHAR (7)   DEFAULT (N'2WD') NOT NULL,
    [fuel_type]              NVARCHAR (6)   DEFAULT (N'Gas') NOT NULL,
    [start_warranty_date]    DATE           DEFAULT (NULL) NULL,
    [voided_at]              DATETIME       DEFAULT (NULL) NULL,
    [void_reason]            NVARCHAR (191) DEFAULT (NULL) NULL,
    [completed_at]           DATETIME       DEFAULT (NULL) NULL,
    [created_at]             DATETIME       DEFAULT (NULL) NULL,
    [updated_at]             DATETIME       DEFAULT (NULL) NULL,
    [account_admin_id]       BIGINT         DEFAULT (NULL) NULL,
    [tax_exempt]             SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_roadside_assistance_and_towing_contracts_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [roadside_assistance_and_towing_contracts$account_admin_roadside_assistance_and_towing_contracts] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id]),
    CONSTRAINT [roadside_assistance_and_towing_contracts$roadside_assistance_and_towing_contracts_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_first_name_index]
    ON [newlap].[roadside_assistance_and_towing_contracts]([first_name] ASC);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_dealership_id_foreign]
    ON [newlap].[roadside_assistance_and_towing_contracts]([dealership_id] ASC);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_status_index]
    ON [newlap].[roadside_assistance_and_towing_contracts]([status] ASC);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_last_name_index]
    ON [newlap].[roadside_assistance_and_towing_contracts]([last_name] ASC);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_completed_at_index]
    ON [newlap].[roadside_assistance_and_towing_contracts]([completed_at] ASC);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_vin_index]
    ON [newlap].[roadside_assistance_and_towing_contracts]([vin] ASC);


GO

CREATE NONCLUSTERED INDEX [account_admin_roadside_assistance_and_towing_contracts]
    ON [newlap].[roadside_assistance_and_towing_contracts]([account_admin_id] ASC);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_created_at_index]
    ON [newlap].[roadside_assistance_and_towing_contracts]([created_at] ASC);


GO

CREATE NONCLUSTERED INDEX [roadside_assistance_and_towing_contracts_contract_number_index]
    ON [newlap].[roadside_assistance_and_towing_contracts]([contract_number] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.roadside_assistance_and_towing_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'roadside_assistance_and_towing_contracts';


GO

