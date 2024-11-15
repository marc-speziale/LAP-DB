CREATE TABLE [dbo].[tblBenefit] (
    [fldBenefitID]                INT             IDENTITY (1, 1) NOT NULL,
    [fldBenefitName]              NVARCHAR (100)  NOT NULL,
    [fldBenefitActive]            BIT             CONSTRAINT [DF_tblBenefit_fldBenefitActive] DEFAULT ((1)) NOT NULL,
    [fldBenefitDescription]       NVARCHAR (MAX)  NOT NULL,
    [fldBenefitText]              TEXT            NOT NULL,
    [fldBenefitHTML]              TEXT            NOT NULL,
    [fldBenefitOldID]             INT             NULL,
    [fldBenefitOrder]             DECIMAL (18, 2) NULL,
    [fldBenefitProductID]         INT             CONSTRAINT [DF_tblBenefit_fldBenefitProductID] DEFAULT ((0)) NULL,
    [fldBenefitDefaultFuelTypeID] INT             NULL,
    [fldBenefitTonnage]           DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_tblBenefit] PRIMARY KEY CLUSTERED ([fldBenefitID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'this relates to postgres.protection_additions', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBenefit', @level2type = N'COLUMN', @level2name = N'fldBenefitOldID';


GO

