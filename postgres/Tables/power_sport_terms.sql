CREATE TABLE [postgres].[power_sport_terms] (
    [id]                 INT             NOT NULL,
    [power_sport_id]     BIGINT          NOT NULL,
    [eligibility]        NVARCHAR (255)  NULL,
    [period]             BIGINT          NULL,
    [power_min]          BIGINT          NULL,
    [power_max]          BIGINT          NULL,
    [no_class]           NUMERIC (13, 2) NULL,
    [class1]             NUMERIC (13, 2) NULL,
    [class2]             NUMERIC (13, 2) NULL,
    [class3]             NUMERIC (13, 2) NULL,
    [claim_amount]       NUMERIC (13, 2) NULL,
    [claim_is_increased] BIT             NULL,
    [claim_increase_sum] NUMERIC (13, 2) NULL,
    [claim_add_price]    NUMERIC (13, 2) NULL,
    [created_at]         DATETIME        NULL,
    [updated_at]         DATETIME        NULL,
    [age_surcharges]     NVARCHAR (255)  NULL
);


GO

