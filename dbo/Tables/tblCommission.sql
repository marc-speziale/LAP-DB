CREATE TABLE [dbo].[tblCommission] (
    [fldCommissionID]                   INT             IDENTITY (1, 1) NOT NULL,
    [fldCommissionAccountID]            INT             CONSTRAINT [DF_tblCommission_fldCommissionAccountID] DEFAULT ((0)) NOT NULL,
    [fldCommissionAmount]               DECIMAL (18, 2) NULL,
    [fldCommissionAmountTypeID]         INT             NULL,
    [fldCommissionDealerID]             INT             NULL,
    [fldCommissionTermDetailID]         INT             NULL,
    [fldCommissionCommissionableAmount] DECIMAL (18, 2) CONSTRAINT [DF_tblCommission_fldCommissionCommissionableAmount] DEFAULT ((0)) NULL,
    [fldCommissionProductID]            INT             NULL,
    CONSTRAINT [PK_tblCommission] PRIMARY KEY CLUSTERED ([fldCommissionID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'dollar or commission', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblCommission', @level2type = N'COLUMN', @level2name = N'fldCommissionAmountTypeID';


GO

