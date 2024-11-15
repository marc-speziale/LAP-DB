CREATE TABLE [dbo].[tblContractBenefit] (
    [fldContractBenefitID]             INT             IDENTITY (1, 1) NOT NULL,
    [fldContractBenefitContractID]     INT             NOT NULL,
    [fldContractBenefitCost]           DECIMAL (18, 2) NULL,
    [fldContractBenefitShowOnContract] BIT             NULL,
    [fldContractBenefitBenefitID]      INT             NOT NULL,
    [fldContractBenefitShowAsOption]   BIT             CONSTRAINT [DF_tblContractBenefit_fldContractBenefitShowAsOption] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblContractBenefit] PRIMARY KEY CLUSTERED ([fldContractBenefitID] ASC)
);


GO

