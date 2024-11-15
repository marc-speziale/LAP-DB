CREATE TABLE [postgres].[protection_addition_to_application_power_sports] (
    [protection_addition_id]     BIGINT          NULL,
    [application_power_sport_id] BIGINT          NOT NULL,
    [slug]                       TEXT            NOT NULL,
    [name]                       TEXT            NOT NULL,
    [fullname]                   TEXT            NULL,
    [is_included]                BIT             NULL,
    [is_selected]                BIT             NOT NULL,
    [price]                      NUMERIC (13, 2) NULL,
    [created_at]                 DATETIME        NULL,
    [updated_at]                 DATETIME        NULL
);


GO

