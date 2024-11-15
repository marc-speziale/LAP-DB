CREATE TABLE [newlap].[adloe_contracts] (
    [id]                       BIGINT         IDENTITY (59, 1) NOT NULL,
    [dealership_id]            BIGINT         DEFAULT (NULL) NULL,
    [owner_id]                 BIGINT         NOT NULL,
    [owner_type]               NVARCHAR (191) DEFAULT (NULL) NULL,
    [salesperson]              NVARCHAR (191) DEFAULT (N'') NOT NULL,
    [product_id]               BIGINT         DEFAULT (NULL) NULL,
    [contract_number]          NVARCHAR (191) DEFAULT (NULL) NULL,
    [contract_price]           DECIMAL (8, 2) DEFAULT (NULL) NULL,
    [stock_number]             NVARCHAR (191) DEFAULT (NULL) NULL,
    [first_name]               NVARCHAR (191) NOT NULL,
    [last_name]                NVARCHAR (191) NOT NULL,
    [address1]                 NVARCHAR (191) NOT NULL,
    [address2]                 NVARCHAR (191) DEFAULT (NULL) NULL,
    [city]                     NVARCHAR (191) NOT NULL,
    [province]                 NVARCHAR (191) NOT NULL,
    [country]                  NVARCHAR (191) NOT NULL,
    [postal_code]              NVARCHAR (20)  NOT NULL,
    [phone]                    NVARCHAR (191) NOT NULL,
    [birthdate]                DATE           DEFAULT (NULL) NULL,
    [email]                    NVARCHAR (191) NOT NULL,
    [employment_company]       NVARCHAR (191) NOT NULL,
    [employment_contact_name]  NVARCHAR (191) NOT NULL,
    [employment_contact_phone] NVARCHAR (191) NOT NULL,
    [employment_term]          NVARCHAR (191) NOT NULL,
    [employment_term_unit]     NVARCHAR (191) NOT NULL,
    [make]                     NVARCHAR (191) DEFAULT (NULL) NULL,
    [model]                    NVARCHAR (191) DEFAULT (NULL) NULL,
    [year]                     BIGINT         DEFAULT (NULL) NULL,
    [trim]                     NVARCHAR (191) DEFAULT (NULL) NULL,
    [serial_number]            NVARCHAR (191) NOT NULL,
    [loan_duration_months]     NVARCHAR (2)   NOT NULL,
    [payment_frequency]        NVARCHAR (191) NOT NULL,
    [payment_frequency_other]  NVARCHAR (191) DEFAULT (NULL) NULL,
    [total_loan_amount]        INT            NOT NULL,
    [monthly_payment_amount]   INT            NOT NULL,
    [item_type]                NVARCHAR (191) NOT NULL,
    [item_type_description]    NVARCHAR (191) DEFAULT (NULL) NULL,
    [lienholder]               NVARCHAR (100) DEFAULT (NULL) NULL,
    [comments]                 NVARCHAR (MAX) NULL,
    [status]                   NVARCHAR (9)   DEFAULT (N'pending') NOT NULL,
    [voided_at]                DATETIME       DEFAULT (NULL) NULL,
    [completed_at]             DATETIME       DEFAULT (NULL) NULL,
    [created_at]               DATETIME       DEFAULT (NULL) NULL,
    [updated_at]               DATETIME       DEFAULT (NULL) NULL,
    [void_reason]              NVARCHAR (191) DEFAULT (NULL) NULL,
    [account_admin_id]         BIGINT         DEFAULT (NULL) NULL,
    [tax_exempt]               SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_adloe_contracts_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [adloe_contracts$account_admin_adloe_contracts] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id]),
    CONSTRAINT [adloe_contracts$adloe_contracts_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_last_name_index]
    ON [newlap].[adloe_contracts]([last_name] ASC);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_first_name_index]
    ON [newlap].[adloe_contracts]([first_name] ASC);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_serial_number_index]
    ON [newlap].[adloe_contracts]([serial_number] ASC);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_status_index]
    ON [newlap].[adloe_contracts]([status] ASC);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_completed_at_index]
    ON [newlap].[adloe_contracts]([completed_at] ASC);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_contract_number_index]
    ON [newlap].[adloe_contracts]([contract_number] ASC);


GO

CREATE NONCLUSTERED INDEX [account_admin_adloe_contracts]
    ON [newlap].[adloe_contracts]([account_admin_id] ASC);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_dealership_id_foreign]
    ON [newlap].[adloe_contracts]([dealership_id] ASC);


GO

CREATE NONCLUSTERED INDEX [adloe_contracts_created_at_index]
    ON [newlap].[adloe_contracts]([created_at] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.adloe_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'adloe_contracts';


GO

