CREATE TABLE [postgres].[dealerships] (
    [id]                          INT            NOT NULL,
    [name]                        TEXT           NOT NULL,
    [legal_name]                  TEXT           NOT NULL,
    [license_number]              TEXT           NOT NULL,
    [location]                    NVARCHAR (255) NULL,
    [is_active]                   BIT            NOT NULL,
    [repair_center]               BIT            NOT NULL,
    [created_at]                  DATETIME       NULL,
    [updated_at]                  DATETIME       NULL,
    [last_application_created_at] DATETIME       NULL,
    [rebate_details]              NVARCHAR (255) NULL,
    [is_five_star]                BIT            NOT NULL,
    [type]                        TEXT           NOT NULL,
    [sales_rep_id]                BIGINT         NULL,
    [deleted_at]                  DATETIME       NULL,
    [phone]                       VARCHAR (16)   NULL,
    [insurance]                   TEXT           NULL,
    [email]                       VARCHAR (255)  NULL,
    [accesses]                    NVARCHAR (255) NULL
);


GO

