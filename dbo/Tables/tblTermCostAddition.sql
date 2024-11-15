CREATE TABLE [dbo].[tblTermCostAddition] (
    [fldTermCostAdditionID]                   INT             IDENTITY (1, 1) NOT NULL,
    [fldTermCostAdditionTermID]               INT             NOT NULL,
    [fldTermCostAdditionDealerID]             INT             NOT NULL,
    [fldTermCostAdditionCost]                 DECIMAL (18, 2) NOT NULL,
    [fldTermCostAdditionMergeWithBase]        BIT             CONSTRAINT [DF_tblTermCostAddition_fldTermCostAdditionMergeWithBase] DEFAULT ((1)) NOT NULL,
    [fldTermCostAdditionRebatePercentage]     DECIMAL (18, 2) CONSTRAINT [DF_tblTermCostAddition_fldTermCostAdditionRebatePercentage] DEFAULT ((0)) NOT NULL,
    [fldTermCostAdditionCommissionPercentage] DECIMAL (18, 2) CONSTRAINT [DF_tblTermCostAddition_fldTermCostAdditionCommissionPercentage] DEFAULT ((0)) NOT NULL,
    [fldTermCostAdditionUnderwriter]          BIT             CONSTRAINT [DF_tblTermCostAddition_fldTermCostAdditionUnderwriter] DEFAULT ((0)) NOT NULL,
    [fldTermCostadditionDescription]          NVARCHAR (MAX)  NULL
);


GO

