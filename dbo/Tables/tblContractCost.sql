CREATE TABLE [dbo].[tblContractCost] (
    [fldContractCostID]                INT                                         IDENTITY (1, 1) NOT NULL,
    [fldContractCostCost]              DECIMAL (18, 2)                             CONSTRAINT [DF_tblContractCost_fldContractCostCost] DEFAULT ((0)) NOT NULL,
    [fldContractCostTypeID]            INT                                         NOT NULL,
    [fldContractCostBenefitID]         INT                                         NULL,
    [fldContractCostActive]            BIT                                         CONSTRAINT [DF_tblContractCost_fldContractCostActive] DEFAULT ((1)) NOT NULL,
    [fldContractCostContractID]        INT                                         NOT NULL,
    [fldContractCostPaid]              BIT                                         CONSTRAINT [DF_tblContractCost_fldContractCostPaid] DEFAULT ((0)) NOT NULL,
    [fldContractCostCommissionPaid]    BIT                                         CONSTRAINT [DF_tblContractCost_fldContractCostCommissionPaid] DEFAULT ((0)) NOT NULL,
    [fldContractCostPST]               DECIMAL (18, 2)                             CONSTRAINT [DF_tblContractCost_fldContractCostPST] DEFAULT ((0)) NOT NULL,
    [fldContractCostHST]               DECIMAL (18, 2)                             CONSTRAINT [DF_tblContractCost_fldContractCostHST] DEFAULT ((0)) NOT NULL,
    [fldContractCostCommissionPercent] DECIMAL (18, 2)                             CONSTRAINT [DF_tblContractCost_fldContractCommissionPercent] DEFAULT ((100)) NOT NULL,
    [fldContractCostUnderwriter]       BIT                                         CONSTRAINT [DF_tblContractCost_fldContractCostUnderwriter] DEFAULT ((1)) NOT NULL,
    [fldContractCostRebatePercent]     DECIMAL (18, 2)                             CONSTRAINT [DF_tblContractCost_fldContractCostRebatePercent] DEFAULT ((100)) NOT NULL,
    [fldContractCostMergeWithBaseCost] BIT                                         CONSTRAINT [DF_tblContractCost_fldContractCostMergeWithBaseCost] DEFAULT ((0)) NOT NULL,
    [fldContractCostPaidDate]          DATETIME                                    NULL,
    [fldContractCostRebatePaid]        BIT                                         CONSTRAINT [DF_tblContractCost_fldContractCostRebatePaid] DEFAULT ((0)) NOT NULL,
    [ValidFrom]                        DATETIME2 (7) GENERATED ALWAYS AS ROW START DEFAULT (sysutcdatetime()) NOT NULL,
    [ValidTo]                          DATETIME2 (7) GENERATED ALWAYS AS ROW END   DEFAULT (CONVERT([datetime2],'9999-12-31 23:59:59.9999999')) NOT NULL,
    CONSTRAINT [PK_tblContractCost] PRIMARY KEY CLUSTERED ([fldContractCostID] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[tblContractCosthistory], DATA_CONSISTENCY_CHECK=ON));


GO

