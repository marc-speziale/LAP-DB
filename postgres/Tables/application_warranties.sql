CREATE TABLE [postgres].[application_warranties] (
    [id]                         INT             NOT NULL,
    [application_id]             BIGINT          NOT NULL,
    [term_id]                    BIGINT          NULL,
    [term_period]                BIGINT          NULL,
    [term_odometer]              BIGINT          NULL,
    [term_price]                 NUMERIC (13, 2) NULL,
    [claim_amount]               NUMERIC (13, 2) NULL,
    [created_at]                 DATETIME        NULL,
    [updated_at]                 DATETIME        NULL,
    [warranty_id]                BIGINT          NULL,
    [warranty_name]              TEXT            NULL,
    [total_price]                NUMERIC (13, 2) NULL,
    [tax_price]                  NUMERIC (13, 2) NULL,
    [subtotal_price]             NUMERIC (13, 2) NULL,
    [discount_price]             NUMERIC (13, 2) NULL,
    [plan_price]                 NUMERIC (13, 2) NULL,
    [markup]                     NUMERIC (13, 2) NULL,
    [markup_unit]                VARCHAR (255)   NULL,
    [warranty_deductible_amount] NUMERIC (13, 2) NULL,
    [base_price]                 NUMERIC (13, 2) NULL,
    [lender_id]                  BIGINT          NULL,
    [lender_name]                VARCHAR (255)   NULL,
    [lender_location]            NVARCHAR (255)  NULL,
    [lender_phone]               VARCHAR (255)   NULL,
    [surcharges]                 NVARCHAR (255)  NULL,
    [pst_tax_price]              NUMERIC (13, 2) NULL,
    [gst_tax_price]              NUMERIC (13, 2) NULL,
    [hst_tax_price]              NUMERIC (13, 2) NULL,
    [base_pst_tax_price]         NUMERIC (13, 2) NULL,
    [base_gst_tax_price]         NUMERIC (13, 2) NULL,
    [base_hst_tax_price]         NUMERIC (13, 2) NULL,
    [base_tax_price]             NUMERIC (13, 2) NULL,
    [base_total_price]           NUMERIC (13, 2) NULL,
    [claim_increase_sum]         NVARCHAR (255)  NULL
);


GO

