CREATE TABLE [dbo].[tblContractCosthistory] (
    [fldContractCostID]                INT             NOT NULL,
    [fldContractCostCost]              DECIMAL (18, 2) NOT NULL,
    [fldContractCostTypeID]            INT             NOT NULL,
    [fldContractCostBenefitID]         INT             NULL,
    [fldContractCostActive]            BIT             NOT NULL,
    [fldContractCostContractID]        INT             NOT NULL,
    [fldContractCostPaid]              BIT             NOT NULL,
    [fldContractCostCommissionPaid]    BIT             NOT NULL,
    [fldContractCostPST]               DECIMAL (18, 2) NOT NULL,
    [fldContractCostHST]               DECIMAL (18, 2) NOT NULL,
    [fldContractCostCommissionPercent] DECIMAL (18, 2) NOT NULL,
    [fldContractCostUnderwriter]       BIT             NOT NULL,
    [fldContractCostRebatePercent]     DECIMAL (18, 2) NOT NULL,
    [fldContractCostMergeWithBaseCost] BIT             NOT NULL,
    [fldContractCostPaidDate]          DATETIME        NULL,
    [fldContractCostRebatePaid]        BIT             NOT NULL,
    [ValidFrom]                        DATETIME2 (7)   NOT NULL,
    [ValidTo]                          DATETIME2 (7)   NOT NULL
);


GO

CREATE CLUSTERED INDEX [ix_tblContractCosthistory]
    ON [dbo].[tblContractCosthistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);


GO

