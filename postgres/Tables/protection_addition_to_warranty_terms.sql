CREATE TABLE [postgres].[protection_addition_to_warranty_terms] (
    [protection_addition_id] BIGINT          NOT NULL,
    [term_id]                BIGINT          NOT NULL,
    [is_included]            BIT             NULL,
    [price]                  NUMERIC (13, 2) NULL,
    [created_at]             DATETIME        NULL,
    [updated_at]             DATETIME        NULL
);


GO

