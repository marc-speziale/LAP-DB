CREATE TABLE [newlap].[contract_analytics] (
    [contract_id]         BIGINT         NOT NULL,
    [contract_type]       NVARCHAR (191) NOT NULL,
    [product]             NVARCHAR (MAX) NOT NULL,
    [dealership]          NVARCHAR (MAX) NOT NULL,
    [vehicle_class]       INT            DEFAULT (NULL) NULL,
    [premium]             INT            NOT NULL,
    [maturity_percentage] DECIMAL (5, 2) NOT NULL,
    [earned_premium]      INT            NOT NULL,
    [claim_count]         INT            NOT NULL,
    [claim_cost]          INT            NOT NULL,
    [created_at]          DATETIME       DEFAULT (NULL) NULL,
    [updated_at]          DATETIME       DEFAULT (NULL) NULL,
    [vehicle_age]         INT            NOT NULL,
    [contract_year]       INT            NOT NULL,
    [interest_rate]       DECIMAL (4, 2) DEFAULT (NULL) NULL
);


GO

CREATE NONCLUSTERED INDEX [contract_analytics_interest_rate_index]
    ON [newlap].[contract_analytics]([interest_rate] ASC);


GO

CREATE NONCLUSTERED INDEX [contract_analytics_vehicle_age_index]
    ON [newlap].[contract_analytics]([vehicle_age] ASC);


GO

CREATE NONCLUSTERED INDEX [contract_analytics_contract_id_index]
    ON [newlap].[contract_analytics]([contract_id] ASC);


GO

CREATE NONCLUSTERED INDEX [contract_analytics_contract_year_index]
    ON [newlap].[contract_analytics]([contract_year] ASC);


GO

CREATE NONCLUSTERED INDEX [contract_analytics_contract_type_index]
    ON [newlap].[contract_analytics]([contract_type] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.contract_analytics', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'contract_analytics';


GO

