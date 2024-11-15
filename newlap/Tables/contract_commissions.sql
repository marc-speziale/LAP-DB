CREATE TABLE [newlap].[contract_commissions] (
    [id]                    BIGINT         IDENTITY (4551, 1) NOT NULL,
    [contract_type]         NVARCHAR (191) NOT NULL,
    [contract_id]           BIGINT         NOT NULL,
    [account_admin_id]      BIGINT         DEFAULT (NULL) NULL,
    [dealer_cost]           BIGINT         DEFAULT (NULL) NULL,
    [tax]                   BIGINT         DEFAULT (NULL) NULL,
    [commission]            BIGINT         DEFAULT (NULL) NULL,
    [commission_tax]        BIGINT         DEFAULT (NULL) NULL,
    [rebate_spiff]          BIGINT         DEFAULT (NULL) NULL,
    [created_at]            DATETIME       DEFAULT (NULL) NULL,
    [updated_at]            DATETIME       DEFAULT (NULL) NULL,
    [contract_voided_at]    DATETIME       DEFAULT (NULL) NULL,
    [contract_completed_at] DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_contract_commissions_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [contract_commissions$contract_commissions_contract_type_contract_id_unique] UNIQUE NONCLUSTERED ([contract_type] ASC, [contract_id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.contract_commissions', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'contract_commissions';


GO

