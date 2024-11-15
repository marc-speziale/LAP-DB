CREATE TABLE [postgres].[claims] (
    [id]                       INT             NOT NULL,
    [creator_id]               BIGINT          NULL,
    [application_id]           BIGINT          NOT NULL,
    [status]                   TEXT            NOT NULL,
    [created_at]               DATETIME        NULL,
    [updated_at]               DATETIME        NULL,
    [responsible_id]           BIGINT          NULL,
    [is_paid]                  BIT             NOT NULL,
    [total_price]              NUMERIC (13, 2) NULL,
    [generated_id]             TEXT            NOT NULL,
    [approval_at]              DATETIME        NULL,
    [vehicle_current_odometer] BIGINT          NULL,
    [repair_center_id]         BIGINT          NULL,
    [deleted_at]               DATETIME        NULL
);


GO

