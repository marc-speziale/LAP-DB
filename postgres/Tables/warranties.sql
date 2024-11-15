CREATE TABLE [postgres].[warranties] (
    [id]                                INT             NOT NULL,
    [template_id]                       BIGINT          NOT NULL,
    [name]                              TEXT            NOT NULL,
    [deductible_amount]                 NUMERIC (13, 2) NULL,
    [eligibility_odometer_min]          BIGINT          NULL,
    [eligibility_odometer_max]          BIGINT          NULL,
    [eligibility_vehicle_year_min]      BIGINT          NULL,
    [eligibility_vehicle_year_max]      BIGINT          NULL,
    [created_at]                        DATETIME        NULL,
    [updated_at]                        DATETIME        NULL,
    [eligibility_additional_kilometers] BIGINT          NULL,
    [markup]                            NUMERIC (13, 2) NULL,
    [eligibility_engine_type]           NVARCHAR (255)  NULL
);


GO

