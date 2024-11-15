CREATE TABLE [dbo].[tblTermBenefit] (
    [fldTermBenefitID]             INT          IDENTITY (1, 1) NOT NULL,
    [fldTermBenefitTermID]         INT          NOT NULL,
    [fldTermBenefitBenefitID]      INT          NOT NULL,
    [fldTermBenefitOption]         BIT          CONSTRAINT [DF_tblTermBenefit_fldTermBenefitOption] DEFAULT ((0)) NOT NULL,
    [fldTermBenefitCost]           DECIMAL (18) CONSTRAINT [DF_tblTermBenefit_fldTermBenefitCost] DEFAULT ((0)) NOT NULL,
    [fldTermBenefitActive]         BIT          CONSTRAINT [DF_tblTermBenefit_fldTermBenefitActive] DEFAULT ((1)) NOT NULL,
    [fldTermBenefitShowAsOption]   BIT          CONSTRAINT [DF_tblTermBenefit_fldTermBenefitShowAsOption] DEFAULT ((0)) NOT NULL,
    [fldTermBenefitShowOnContract] BIT          CONSTRAINT [DF_tblTermBenefit_fldTermBenefitShowOnContract] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_tblTermBenefit] PRIMARY KEY CLUSTERED ([fldTermBenefitID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if the Benefit is included or is an option', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTermBenefit', @level2type = N'COLUMN', @level2name = N'fldTermBenefitOption';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblTerms', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTermBenefit', @level2type = N'COLUMN', @level2name = N'fldTermBenefitTermID';


GO

