CREATE TABLE [dbo].[tblRebate] (
    [fldRebateID]           INT             IDENTITY (1, 1) NOT NULL,
    [fldRebateName]         NVARCHAR (100)  NOT NULL,
    [fldRebateDescription]  NVARCHAR (500)  NULL,
    [fldRebateAmount]       DECIMAL (18, 2) NOT NULL,
    [fldRebateAmountType]   INT             NOT NULL,
    [fldRebatePayee]        INT             NOT NULL,
    [fldRebateSeparatePage] BIT             NOT NULL,
    [fldRebateDealerID]     INT             NOT NULL,
    [fldRebateTermNameID]   INT             NULL,
    [fldRebateTermID]       INT             NULL,
    [fldRebateProductID]    INT             NULL,
    [fldRebateApplyPst]     BIT             CONSTRAINT [DF_tblRebate_fldRebateApplyPst] DEFAULT ((1)) NOT NULL,
    [fldRebateApplyHst]     BIT             CONSTRAINT [DF_tblRebate_fldRebateApplyHst] DEFAULT ((1)) NOT NULL,
    [fldRebateUserSpecific] BIT             CONSTRAINT [DF_tblRebate_fldRebateUserSpecific] DEFAULT ((0)) NOT NULL,
    [fldRebateExcludeUsers] BIT             CONSTRAINT [DF_tblRebate_fldRebateExcludeUsers] DEFAULT ((0)) NOT NULL,
    [fldRebateStartDate]    DATE            NULL,
    [fldRebateEndDate]      DATE            NULL,
    [fldRebateActive]       BIT             CONSTRAINT [DF_tblRebate_fldRebateActive] DEFAULT ((0)) NOT NULL
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'user ID of the payee. 0 = dealership', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblRebate', @level2type = N'COLUMN', @level2name = N'fldRebatePayee';


GO

