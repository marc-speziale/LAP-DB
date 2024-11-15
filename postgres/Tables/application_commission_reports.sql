CREATE TABLE [postgres].[application_commission_reports] (
    [id]             INT             NOT NULL,
    [application_id] BIGINT          NOT NULL,
    [report_id]      BIGINT          NOT NULL,
    [user_id]        BIGINT          NOT NULL,
    [details]        NVARCHAR (255)  NULL,
    [tax_type]       VARCHAR (255)   NULL,
    [tax]            NUMERIC (13, 2) NULL,
    [total]          NUMERIC (13, 2) NULL,
    [created_at]     DATETIME        NULL,
    [updated_at]     DATETIME        NULL
);


GO

