CREATE TABLE [postgres].[protection_addition_to_application_warranties] (
    [protection_addition_id]  BIGINT          NULL,
    [application_warranty_id] BIGINT          NOT NULL,
    [slug]                    TEXT            NOT NULL,
    [name]                    TEXT            NOT NULL,
    [is_included]             BIT             NULL,
    [price]                   NUMERIC (13, 2) NULL,
    [created_at]              DATETIME        NULL,
    [updated_at]              DATETIME        NULL,
    [is_selected]             BIT             NOT NULL,
    [fullname]                TEXT            NULL
);


GO

