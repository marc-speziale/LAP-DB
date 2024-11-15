CREATE TABLE [postgres].[warranty_terms] (
    [id]                  INT             NOT NULL,
    [warranty_id]         BIGINT          NOT NULL,
    [period]              BIGINT          NULL,
    [odometer]            BIGINT          NULL,
    [created_at]          DATETIME        NULL,
    [updated_at]          DATETIME        NULL,
    [claim_amount]        NUMERIC (13, 2) NULL,
    [claim_is_increased]  BIT             NULL,
    [class1]              NUMERIC (13, 2) NULL,
    [class2]              NUMERIC (13, 2) NULL,
    [class3]              NUMERIC (13, 2) NULL,
    [class4]              NUMERIC (13, 2) NULL,
    [odometer_surcharges] NVARCHAR (255)  NULL,
    [claim_increase_sum]  NVARCHAR (255)  NULL
);


GO

