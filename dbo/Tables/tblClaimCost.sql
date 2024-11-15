CREATE TABLE [dbo].[tblClaimCost] (
    [fldClaimCostID]              INT             IDENTITY (1, 1) NOT NULL,
    [fldClaimCostBenefitID]       INT             NOT NULL,
    [fldClaimCostDescription]     NVARCHAR (500)  NOT NULL,
    [fldClaimCostClaimFundingID]  INT             NOT NULL,
    [fldClaimCostClaimCostTypeID] INT             NOT NULL,
    [fldClaimCostCost]            DECIMAL (18, 2) CONSTRAINT [DF_tblClaimCost_fldClaimCostCost] DEFAULT ((0)) NOT NULL,
    [fldClaimCostTaxes]           DECIMAL (18, 2) CONSTRAINT [DF_tblClaimCost_fldClaimCostTaxes] DEFAULT ((0)) NOT NULL,
    [fldClaimCostPayableTo]       NVARCHAR (255)  NULL,
    [fldClaimCostClaimID]         INT             NOT NULL,
    [fldClaimCostHours]           DECIMAL (18, 2) CONSTRAINT [DF_tblClaimCost_fldClaimCostHours] DEFAULT ((0)) NOT NULL,
    [fldClaimCostRate]            DECIMAL (18, 2) CONSTRAINT [DF_tblClaimCost_fldClaimCostRate] DEFAULT ((0)) NOT NULL
);


GO

