CREATE TABLE [postgres].[application_gaps] (
    [id]                        INT             NOT NULL,
    [application_id]            BIGINT          NOT NULL,
    [gap_type]                  VARCHAR (255)   NULL,
    [lender_id]                 BIGINT          NULL,
    [gap_id]                    BIGINT          NULL,
    [lender_name]               VARCHAR (255)   NULL,
    [lender_location]           VARCHAR (255)   NULL,
    [lender_phone]              VARCHAR (255)   NULL,
    [gap_use_type]              VARCHAR (255)   NULL,
    [gap_lien_type]             VARCHAR (255)   NULL,
    [gap_interest_rate]         NUMERIC (5, 2)  NULL,
    [term_period]               BIGINT          NOT NULL,
    [gap_loan_amount]           NUMERIC (13, 2) NULL,
    [created_at]                DATETIME        NULL,
    [updated_at]                DATETIME        NULL,
    [total_price]               NUMERIC (13, 2) NULL,
    [tax_price]                 NUMERIC (13, 2) NULL,
    [subtotal_price]            NUMERIC (13, 2) NULL,
    [discount_price]            NUMERIC (13, 2) NULL,
    [gap_down_payment]          NUMERIC (13, 2) NULL,
    [is_gap_down_payment_added] BIT             NOT NULL,
    [markup]                    NUMERIC (13, 2) NULL,
    [markup_unit]               VARCHAR (255)   NULL,
    [base_price]                NUMERIC (13, 2) NULL,
    [pst_tax_price]             NUMERIC (13, 2) NULL,
    [gst_tax_price]             NUMERIC (13, 2) NULL,
    [hst_tax_price]             NUMERIC (13, 2) NULL,
    [base_pst_tax_price]        NUMERIC (13, 2) NULL,
    [base_gst_tax_price]        NUMERIC (13, 2) NULL,
    [base_hst_tax_price]        NUMERIC (13, 2) NULL,
    [base_tax_price]            NUMERIC (13, 2) NULL,
    [base_total_price]          NUMERIC (13, 2) NULL
);


GO

