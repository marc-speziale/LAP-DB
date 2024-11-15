CREATE TABLE [newlap].[claims] (
    [id]                   BIGINT         IDENTITY (18893, 1) NOT NULL,
    [contract_id]          BIGINT         NOT NULL,
    [contract_type]        NVARCHAR (191) NOT NULL,
    [authorization_number] NVARCHAR (191) DEFAULT (NULL) NULL,
    [repair_facility_name] NVARCHAR (191) DEFAULT (NULL) NULL,
    [km_at_claim_time]     INT            DEFAULT (NULL) NULL,
    [date_of_repair]       DATE           DEFAULT (NULL) NULL,
    [labour_price]         INT            DEFAULT (NULL) NULL,
    [parts_price]          INT            DEFAULT (NULL) NULL,
    [tax_price]            INT            DEFAULT (NULL) NULL,
    [other_price]          INT            DEFAULT (NULL) NULL,
    [status]               NVARCHAR (7)   DEFAULT (NULL) NULL,
    [type]                 NVARCHAR (7)   DEFAULT (NULL) NULL,
    [opened_at]            DATETIME       DEFAULT (NULL) NULL,
    [closed_at]            DATETIME       DEFAULT (NULL) NULL,
    [created_at]           DATETIME       DEFAULT (NULL) NULL,
    [updated_at]           DATETIME       DEFAULT (NULL) NULL,
    [pre_tax_price]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [adjusting_cost]       INT            DEFAULT (NULL) NULL,
    [reason]               NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_claims_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.claims', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'claims';


GO

