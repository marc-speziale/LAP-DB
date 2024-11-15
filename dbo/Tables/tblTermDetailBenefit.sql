CREATE TABLE [dbo].[tblTermDetailBenefit] (
    [fldTermDetailBenefitID]           INT             IDENTITY (1, 1) NOT NULL,
    [fldTermDetailBenefitBenefitID]    INT             NULL,
    [fldTermDetailBenefitTermDetailID] INT             NULL,
    [fldTermDetailBenefitOption]       BIT             NULL,
    [fldTermDetailBenefitCost]         DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_tblTermDetailBenefit] PRIMARY KEY CLUSTERED ([fldTermDetailBenefitID] ASC)
);


GO

