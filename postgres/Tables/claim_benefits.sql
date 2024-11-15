CREATE TABLE [postgres].[claim_benefits] (
    [claim_id]               BIGINT          NOT NULL,
    [benefit_id]             BIGINT          NOT NULL,
    [labour_price]           NUMERIC (13, 2) NULL,
    [parts_price]            NUMERIC (13, 2) NULL,
    [total_price]            NUMERIC (13, 2) NULL,
    [created_at]             DATETIME        NULL,
    [updated_at]             DATETIME        NULL,
    [parts_name]             TEXT            NULL,
    [parts_pst_tax_price]    NUMERIC (13, 2) NULL,
    [parts_gst_tax_price]    NUMERIC (13, 2) NULL,
    [parts_hst_tax_price]    NUMERIC (13, 2) NULL,
    [parts_other_tax_price]  NUMERIC (13, 2) NULL,
    [labour_pst_tax_price]   NUMERIC (13, 2) NULL,
    [labour_gst_tax_price]   NUMERIC (13, 2) NULL,
    [labour_hst_tax_price]   NUMERIC (13, 2) NULL,
    [labour_other_tax_price] NUMERIC (13, 2) NULL
);


GO

