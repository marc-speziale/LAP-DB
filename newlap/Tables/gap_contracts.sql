CREATE TABLE [newlap].[gap_contracts] (
    [id]                         BIGINT         IDENTITY (32914, 1) NOT NULL,
    [dealership_id]              BIGINT         DEFAULT (NULL) NULL,
    [owner_id]                   BIGINT         NOT NULL,
    [owner_type]                 NVARCHAR (191) DEFAULT (NULL) NULL,
    [salesperson]                NVARCHAR (191) DEFAULT (N'') NOT NULL,
    [product_id]                 BIGINT         DEFAULT (NULL) NULL,
    [product_type]               NVARCHAR (191) DEFAULT (NULL) NULL,
    [product_price]              INT            DEFAULT (NULL) NULL,
    [contract_number]            NVARCHAR (191) DEFAULT (NULL) NULL,
    [contract_price]             DECIMAL (8, 2) DEFAULT (NULL) NULL,
    [stock_number]               NVARCHAR (191) DEFAULT (NULL) NULL,
    [first_name]                 NVARCHAR (191) NOT NULL,
    [last_name]                  NVARCHAR (191) NOT NULL,
    [address1]                   NVARCHAR (191) NOT NULL,
    [address2]                   NVARCHAR (191) DEFAULT (NULL) NULL,
    [city]                       NVARCHAR (191) NOT NULL,
    [province]                   NVARCHAR (191) NOT NULL,
    [country]                    NVARCHAR (191) NOT NULL,
    [postal_code]                NVARCHAR (20)  NOT NULL,
    [phone]                      NVARCHAR (191) NOT NULL,
    [birthdate]                  DATE           DEFAULT (NULL) NULL,
    [email]                      NVARCHAR (191) NOT NULL,
    [make]                       NVARCHAR (191) NOT NULL,
    [model]                      NVARCHAR (191) NOT NULL,
    [year]                       BIGINT         NOT NULL,
    [trim]                       NVARCHAR (191) NOT NULL,
    [vin]                        NVARCHAR (191) NOT NULL,
    [num_cylinders]              INT            DEFAULT (NULL) NULL,
    [delivery_date]              DATE           NOT NULL,
    [in_service_date]            DATE           DEFAULT (NULL) NULL,
    [vintage]                    NVARCHAR (4)   DEFAULT (NULL) NULL,
    [price]                      NVARCHAR (191) NOT NULL,
    [odometer]                   NVARCHAR (191) DEFAULT (NULL) NULL,
    [odometer_unit]              NVARCHAR (2)   DEFAULT (NULL) NULL,
    [vehicle_usage]              NVARCHAR (10)  DEFAULT (N'personal') NULL,
    [transmission]               NVARCHAR (9)   DEFAULT (N'Automatic') NULL,
    [finance_term_months]        NVARCHAR (3)   NOT NULL,
    [finance_amount]             NVARCHAR (12)  DEFAULT (NULL) NULL,
    [lienholder]                 NVARCHAR (100) DEFAULT (NULL) NULL,
    [comments]                   NVARCHAR (MAX) NULL,
    [type]                       NVARCHAR (10)  DEFAULT (N'Auto') NOT NULL,
    [status]                     NVARCHAR (9)   DEFAULT (N'pending') NOT NULL,
    [type_finance_contract]      NVARCHAR (7)   DEFAULT (NULL) NULL,
    [negative_equity_amount]     INT            DEFAULT (NULL) NULL,
    [interest_rate]              DECIMAL (4, 2) DEFAULT (NULL) NULL,
    [total_finance_amount]       INT            DEFAULT (NULL) NULL,
    [trade_in_allowance]         INT            DEFAULT (NULL) NULL,
    [payout_lien_on_trade_in]    INT            DEFAULT (NULL) NULL,
    [deposit_down_payment]       INT            DEFAULT (NULL) NULL,
    [vehicle_value]              INT            DEFAULT (NULL) NULL,
    [voided_at]                  DATETIME       DEFAULT (NULL) NULL,
    [completed_at]               DATETIME       DEFAULT (NULL) NULL,
    [created_at]                 DATETIME       DEFAULT (NULL) NULL,
    [updated_at]                 DATETIME       DEFAULT (NULL) NULL,
    [void_reason]                NVARCHAR (191) DEFAULT (NULL) NULL,
    [creditor]                   NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [payment_amount]             INT            DEFAULT (NULL) NULL,
    [payment_frequency]          NVARCHAR (9)   DEFAULT (NULL) NULL,
    [customer_signature]         NVARCHAR (MAX) NULL,
    [signed_at]                  DATETIME       DEFAULT (NULL) NULL,
    [mail_in_signature_expected] SMALLINT       DEFAULT ((0)) NOT NULL,
    [account_admin_id]           BIGINT         DEFAULT (NULL) NULL,
    [tax_exempt]                 SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_gap_contracts_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [gap_contracts$account_admin_gap_contracts] FOREIGN KEY ([account_admin_id]) REFERENCES [newlap].[account_admins] ([id])
);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_product_type_index]
    ON [newlap].[gap_contracts]([product_type] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_vin_index]
    ON [newlap].[gap_contracts]([vin] ASC);


GO

CREATE NONCLUSTERED INDEX [monthly_report_index]
    ON [newlap].[gap_contracts]([status] ASC, [product_type] ASC, [completed_at] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_completed_at_index]
    ON [newlap].[gap_contracts]([completed_at] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_first_name_index]
    ON [newlap].[gap_contracts]([first_name] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_contract_number_index]
    ON [newlap].[gap_contracts]([contract_number] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_interest_rate_index]
    ON [newlap].[gap_contracts]([interest_rate] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_status_completed_at_index]
    ON [newlap].[gap_contracts]([status] ASC, [completed_at] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_created_at_index]
    ON [newlap].[gap_contracts]([created_at] ASC);


GO

CREATE NONCLUSTERED INDEX [account_admin_gap_contracts]
    ON [newlap].[gap_contracts]([account_admin_id] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_last_name_index]
    ON [newlap].[gap_contracts]([last_name] ASC);


GO

CREATE NONCLUSTERED INDEX [gap_contracts_status_index]
    ON [newlap].[gap_contracts]([status] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'gap_contracts';


GO

