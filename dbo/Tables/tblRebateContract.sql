CREATE TABLE [dbo].[tblRebateContract] (
    [fldRebateContractID]             INT             IDENTITY (1, 1) NOT NULL,
    [fldRebateContractAmount]         DECIMAL (18, 2) NOT NULL,
    [fldRebateContractPaid]           BIT             CONSTRAINT [DF_tblRebateContract_fldRebateContractPaid] DEFAULT ((0)) NOT NULL,
    [fldRebateContractPaidDate]       DATE            NULL,
    [fldRebateContractContractID]     INT             NOT NULL,
    [fldRebateContractContractCostID] INT             NOT NULL,
    [fldRebateContractPayee]          INT             CONSTRAINT [DF_tblRebateContract_fldRebateContractPayee] DEFAULT ((0)) NOT NULL,
    [fldRebateContractPst]            DECIMAL (18, 2) CONSTRAINT [DF_tblRebateContract_fldRebateContractPst] DEFAULT ((0)) NOT NULL,
    [fldRebateContractHst]            DECIMAL (18, 2) CONSTRAINT [DF_tblRebateContract_fldRebateContractHst] DEFAULT ((0)) NOT NULL,
    [fldRebateContractRebateID]       INT             CONSTRAINT [DF_tblRebateContract_fldRebateContractRebateID] DEFAULT ((0)) NOT NULL
);


GO

