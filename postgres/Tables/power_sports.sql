CREATE TABLE [postgres].[power_sports] (
    [id]                INT             NOT NULL,
    [template_id]       BIGINT          NOT NULL,
    [name]              TEXT            NOT NULL,
    [transport_type]    TEXT            NOT NULL,
    [deductible_amount] NUMERIC (13, 2) NULL,
    [created_at]        DATETIME        NULL,
    [updated_at]        DATETIME        NULL
);


GO

