CREATE TABLE [dbo].[tblTerm] (
    [fldTermID]                         INT             IDENTITY (1, 1) NOT NULL,
    [fldTermTermNameID]                 INT             NOT NULL,
    [fldTermActive]                     BIT             NOT NULL,
    [fldTermProductID]                  INT             NOT NULL,
    [fldTermMonths]                     INT             NOT NULL,
    [fldTermKMs]                        INT             NOT NULL,
    [fldTermClaimMax]                   DECIMAL (18, 2) NOT NULL,
    [fldTermOdometerSurcharge]          DECIMAL (18, 2) NOT NULL,
    [fldTermCreatedDate]                DATETIME        NULL,
    [fldTermCostClass1]                 DECIMAL (18, 2) NOT NULL,
    [fldTermCostClass2]                 DECIMAL (18, 2) NULL,
    [fldTermCostClass3]                 DECIMAL (18, 2) NULL,
    [fldTermCostClass4]                 DECIMAL (18, 2) NULL,
    [fldTermCostClass5]                 DECIMAL (18, 2) NULL,
    [fldTermCostClass6]                 DECIMAL (18, 2) NULL,
    [fldTermQualifyClass1]              BIT             NULL,
    [fldTermQualifyClass2]              BIT             NULL,
    [fldTermQualifyClass3]              BIT             NULL,
    [fldTermQualifyClass4]              BIT             NULL,
    [fldTermQualifyClass5]              BIT             NULL,
    [fldTermQualifyClass6]              BIT             NULL,
    [fldTermSeries]                     INT             NULL,
    [fldTermFinanceAmount]              DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermFinanceAmount] DEFAULT ((0)) NOT NULL,
    [fldTermKMRestrictionMin]           INT             CONSTRAINT [DF_tblTerm_fldTermKMRestriction] DEFAULT ((0)) NOT NULL,
    [fldTermAgeRestrictionMin]          INT             CONSTRAINT [DF_tblTerm_fldTermAgeRestriction] DEFAULT ((0)) NOT NULL,
    [fldTermGAPMinInterestRate]         DECIMAL (18, 2) NOT NULL,
    [fldTermGAPMaxInterestRate]         DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermGAPMaxInterestRate] DEFAULT ((0)) NOT NULL,
    [fldTermGAPMinFinanceAmount]        DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermGAPMinFinanceAmount] DEFAULT ((0)) NOT NULL,
    [fldTermGAPMaxFinanceAmount]        DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermGAPMaxFinanceAmount] DEFAULT ((0)) NOT NULL,
    [fldTermGAPMinFinancingTerm]        INT             CONSTRAINT [DF_tblTerm_fldTermGAPMinFinancingTerm] DEFAULT ((0)) NOT NULL,
    [fldTermGAPMaxFinancingTerm]        INT             CONSTRAINT [DF_tblTerm_fldTermGAPMaxFinancingTerm] DEFAULT ((0)) NOT NULL,
    [fldTermPowerSportsType]            INT             CONSTRAINT [DF_tblTerm_fldTermPowerSportsType] DEFAULT ((0)) NOT NULL,
    [fldTermAgeSurcharge]               DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermAgeSurcharge] DEFAULT ((0)) NOT NULL,
    [fldTermPowersportsPowerMin]        DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermPowersportsPowerMin] DEFAULT ((0)) NULL,
    [fldTermPowersportsPowerMax]        DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermPowersportsPowerMax] DEFAULT ((0)) NULL,
    [fldTermKMOverage]                  INT             CONSTRAINT [DF_tblTerm_fldTermKMOverage] DEFAULT ((0)) NOT NULL,
    [fldTermOldID]                      INT             NULL,
    [fldTermKMRestrictionMax]           INT             NULL,
    [fldTermAgeRestrictionMax]          INT             NULL,
    [fldTermAmortizationMonthsMin]      INT             CONSTRAINT [DF_tblTerm_fldTermAmortizationMonths] DEFAULT ((0)) NULL,
    [fldTermAmortizationMonthsMax]      INT             CONSTRAINT [DF_tblTerm_fldTermAmortizationMonthsMax] DEFAULT ((0)) NULL,
    [fldTermDownPaymentRate0_5000]      DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermDownPaymentRate0_5000] DEFAULT ((0)) NULL,
    [fldTermDownPaymentRate5001_10000]  DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermDownPaymentRate5001_10000] DEFAULT ((0)) NULL,
    [fldTermDownPaymentRate10001_15000] DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermDownPaymentRate10001_15000] DEFAULT ((0)) NULL,
    [fldTermDownPaymentRate15001_20000] DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermDownPaymentRate15001_20000] DEFAULT ((0)) NULL,
    [fldTermDeductible]                 DECIMAL (18, 2) CONSTRAINT [DF_tblTerm_fldTermDeductible] DEFAULT ((0)) NULL,
    [fldTermTemplateID]                 INT             CONSTRAINT [DF_tblTerm_fldTermTemplateID] DEFAULT ((0)) NULL,
    [fldTermUnderwriterID]              INT             CONSTRAINT [DF_tblTerm_fldTermUnderwriterID] DEFAULT ((2)) NOT NULL,
    [fldTermPDFContractName]            NVARCHAR (50)   NULL,
    [fldTermGAPPolicyPeriodMax]         INT             CONSTRAINT [DF_tblTerm_fldTermGAPPolicyPeriodMax] DEFAULT ((0)) NOT NULL,
    [fldTermContractTemplateID]         INT             CONSTRAINT [DF_tblTerm_fldTermContractTemplateID] DEFAULT ((0)) NOT NULL,
    [fldTermModelYearsOverage]          INT             CONSTRAINT [DF_tblTerm_fldTermModelYearsOverage] DEFAULT ((0)) NOT NULL,
    [fldTermVehicleAgeID]               INT             NULL,
    [fldTermSoftAgeCap]                 INT             CONSTRAINT [DF_tblTerm_fldTermSoftAgeCap] DEFAULT ((100)) NOT NULL,
    [fldTermRequiresTireSize]           BIT             CONSTRAINT [DF_tblTerm_fldTermRequiresTireSize] DEFAULT ((0)) NOT NULL,
    [fldTermShowStickerBox]             BIT             CONSTRAINT [DF_tblTerm_fldTermShowStickerBox] DEFAULT ((0)) NOT NULL,
    [fldTermKMCap]                      BIT             CONSTRAINT [DF_tblTerm_fldTermKMCap] DEFAULT ((0)) NULL,
    [fldTermGAPCost]                    DECIMAL (18, 2) NULL,
    [fldTermUnderwriterTypeID]          INT             NULL,
    [fldTermDescription]                NVARCHAR (100)  NULL,
    CONSTRAINT [PK_tblTerm] PRIMARY KEY CLUSTERED ([fldTermID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblSeries', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermSeries';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if Term is available for Class 6 vehicles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermQualifyClass6';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if Term is available for Class 1 vehicles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermQualifyClass1';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The amount of kms above restriction, permitted with a surcharge', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermKMOverage';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'this value is in years', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermAgeRestrictionMin';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblPowersportsType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermPowerSportsType';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if Term is available for Class 3 vehicles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermQualifyClass3';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'this field value is postgres.template.Id and is only used to import data from old database.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermTemplateID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if Term is available for Class 2 vehicles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermQualifyClass2';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This is the ID Key from the old database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermOldID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if Term is available for Class 5 vehicles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermQualifyClass5';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if Term is available for Class 4 vehicles', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermQualifyClass4';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This field identifies a warranty product to be a mileage cap or mileage term.  A mileage cap warranty (5y/200000kms) indicates the warranty expires when the vehicle''s odometer reading reaches 200000.  A mileage term (3yr/60000) indicates the warranty expires after 60000 kms have been driven.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTerm', @level2type = N'COLUMN', @level2name = N'fldTermKMCap';


GO

