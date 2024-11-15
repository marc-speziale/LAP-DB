CREATE TABLE [dbo].[tblContract] (
    [fldContractID]                         INT             IDENTITY (1, 1) NOT NULL,
    [fldContractFName]                      NVARCHAR (MAX)  NOT NULL,
    [fldContractLName]                      NVARCHAR (MAX)  NOT NULL,
    [fldContractEmail]                      NVARCHAR (MAX)  NULL,
    [fldContractPhone]                      NVARCHAR (50)   NULL,
    [fldContractCreatedDate]                DATETIME        NULL,
    [fldContractAddress1]                   NVARCHAR (MAX)  NULL,
    [fldContractAddress2]                   NVARCHAR (MAX)  NULL,
    [fldContractCity]                       NVARCHAR (50)   NULL,
    [fldContractProvinceID]                 INT             NULL,
    [fldContractCountryID]                  INT             NULL,
    [fldContractBirthDate]                  DATE            NULL,
    [fldContracEmployer]                    NVARCHAR (50)   NULL,
    [fldContractEmployerContactName]        NVARCHAR (50)   NULL,
    [fldContractEmployerContactPhone]       NVARCHAR (50)   NULL,
    [fldContractEmployerTerm]               INT             NULL,
    [fldContractEmployerTermUnit]           NVARCHAR (50)   NULL,
    [fldContractMake]                       NVARCHAR (50)   NULL,
    [fldContractModel]                      NVARCHAR (50)   NULL,
    [fldContractYear]                       INT             NULL,
    [fldContractTrim]                       NVARCHAR (255)  NULL,
    [fldContractSerialNumber]               NVARCHAR (50)   NULL,
    [fldContractLastUpated]                 DATETIME        NULL,
    [fldContractStatusID]                   INT             NULL,
    [fldContractSalesRepID]                 INT             NULL,
    [fldContractContractDealerID]           INT             NULL,
    [fldProductID]                          INT             NULL,
    [fldContractOdometer]                   INT             NULL,
    [fldContractEngineSize]                 NVARCHAR (100)  NULL,
    [fldContractLienHolder]                 NVARCHAR (MAX)  NULL,
    [fldContractInServiceDate]              DATE            NULL,
    [fldContractPurchaseDate]               DATETIME        NULL,
    [fldContractPostalCode]                 NCHAR (10)      NULL,
    [fldContractTermDetailsID]              INT             NOT NULL,
    [fldContractVIN]                        NVARCHAR (50)   NULL,
    [fldContractPurchasePrice]              DECIMAL (18, 2) CONSTRAINT [DF_tblContract_fldContractPurchasePrice] DEFAULT ((0)) NOT NULL,
    [fldContractOldID]                      INT             NULL,
    [fldContractSalesPerson]                NVARCHAR (255)  NOT NULL,
    [fldContractFactoryWarranty]            BIT             NOT NULL,
    [fldContractTypeOfFinanceID]            INT             NULL,
    [fldContractVehicleDescription]         INT             NULL,
    [fldContractEffectiveDate]              SMALLDATETIME   NULL,
    [fldContractSellingPrice]               DECIMAL (18, 2) NOT NULL,
    [fldContractTireSize]                   NVARCHAR (50)   NULL,
    [fldContractTireMake]                   NVARCHAR (50)   NULL,
    [fldContractStockNumber]                NVARCHAR (MAX)  NULL,
    [fldContractVehicleUsageID]             INT             NULL,
    [fldContractVehicleAgeID]               INT             NULL,
    [fldContractDeliveryDate]               DATETIME        NULL,
    [fldContractTransactionTypeID]          INT             NULL,
    [fldContractElectricID]                 INT             NULL,
    [fldContractFuelTypeID]                 INT             NULL,
    [fldContractDriveTrainID]               INT             NULL,
    [fldContractFactoryWarrantyCancelled]   BIT             NOT NULL,
    [fldContractCompletedDate]              DATETIME        NULL,
    [fldContractFinanceTerm]                INT             NULL,
    [fldContractPaymentAmount]              DECIMAL (18, 2) NULL,
    [fldContractPaymentFrequencyID]         INT             NULL,
    [fldContractTransmissionID]             INT             NULL,
    [fldContractNegativeEquityAmount]       DECIMAL (18, 2) NULL,
    [fldContractInterestRate]               DECIMAL (18, 3) NULL,
    [fldContractTotalFinanceAmount]         DECIMAL (18, 2) NULL,
    [fldContractTradeInAllowance]           DECIMAL (18, 2) NULL,
    [fldContractPayoutLienTradeIn]          DECIMAL (18, 2) NULL,
    [fldContractDeposit]                    DECIMAL (18, 2) NULL,
    [fldContractGapUnitTypeID]              INT             NULL,
    [fldContractVoidReason]                 NVARCHAR (MAX)  NULL,
    [fldContractOLDContractNumber]          INT             NULL,
    [fldContractCorrosionProtectionTypeNAS] NCHAR (10)      NULL,
    [fldContractLatitude]                   DECIMAL (18, 4) NULL,
    [fldContractLongitude]                  DECIMAL (18, 4) NULL,
    [fldContractTaxExempt]                  BIGINT          NULL,
    [fldContractRemittance]                 INT             NULL,
    [fldContractSaleID]                     INT             NULL,
    [fldContractLienHolderAddress]          NVARCHAR (100)  NULL,
    [fldContractLienHolderCity]             NVARCHAR (50)   NULL,
    [fldContractLienHolderProvinceID]       INT             NULL,
    [fldContractLienCountryID]              INT             NULL,
    [fldContractLienPhone]                  NVARCHAR (50)   NULL,
    [fldContractLienHolderPostalCode]       NVARCHAR (50)   NULL,
    [fldContractFirstNationExempt]          BIT             CONSTRAINT [DF_tblContract_fldContractFirstNationExempt] DEFAULT ((0)) NOT NULL,
    [fldContractFirstNationExemptID]        NVARCHAR (50)   NULL,
    [fldContractPaid]                       INT             CONSTRAINT [DF_tblContract_fldContractPaid] DEFAULT ((0)) NOT NULL,
    [fldContractDownPayment]                DECIMAL (18, 2) NULL,
    [fldContractLoanAmount]                 DECIMAL (18, 2) NULL,
    [fldContractDownPaymentProtection]      BIT             CONSTRAINT [DF_tblContract_fldContractDownPaymentProtection] DEFAULT ((0)) NOT NULL,
    [fldContractMonths]                     INT             NULL,
    [fldContractMileage]                    INT             NULL,
    [fldContractPST]                        DECIMAL (18, 2) CONSTRAINT [DF_tblContract_fldContractPST] DEFAULT ((0)) NOT NULL,
    [fldContractMinimumPremium]             DECIMAL (18, 2) NULL,
    [fldContractCreatedBy]                  INT             NULL,
    [fldContractGAPAmortizationTerm]        INT             CONSTRAINT [DF_tblContract_fldContractGAPAmortizationTerm] DEFAULT ((0)) NULL,
    [fldContractUnderwriterTypeID]          INT             NULL,
    [fldContractClass]                      INT             CONSTRAINT [DF_tblContract_fldContractClass] DEFAULT ((1)) NOT NULL,
    [fldContractPowersportsTypeID]          INT             NULL,
    [fldContractNotes]                      NVARCHAR (MAX)  NULL,
    [fldContractDiscount]                   DECIMAL (18, 2) CONSTRAINT [DF_tblContract_fldContractDiscount] DEFAULT ((0)) NOT NULL,
    [fldContractPurchasePriceTaxes]         DECIMAL (18, 2) CONSTRAINT [DF_tblContract_fldContractPurchasePriceTaxes] DEFAULT ((0)) NOT NULL,
    [fldContractRemittanceSelected]         BIT             CONSTRAINT [DF_tblContract_fldContractRemittanceSelected] DEFAULT ((0)) NOT NULL,
    [fldContractHST]                        DECIMAL (18, 2) CONSTRAINT [DF_tblContract_fldContractHST] DEFAULT ((0)) NOT NULL,
    [fldContractOldTermID]                  INT             NULL,
    [fldContractDealerCost]                 DECIMAL (18, 2) NULL,
    [FldContractEngineCC]                   INT             CONSTRAINT [DF_tblContract_FldContractEngineCC] DEFAULT ((0)) NOT NULL,
    [fldContractDebtorName]                 NVARCHAR (100)  NULL,
    [fldContractCoDebtorName]               NVARCHAR (100)  NULL,
    [fldContractSignedAt]                   NVARCHAR (100)  NULL,
    [fldContractTermNameID]                 INT             NULL,
    [fldContractStickerValue]               NVARCHAR (50)   NULL,
    [fldContractExpiryDate]                 DATE            NULL,
    [fldContractDeletedNote]                NVARCHAR (1000) NULL,
    [fldContractGAPCost]                    DECIMAL (18, 2) NULL,
    [fldContractUnderwriterId]              INT             NULL,
    CONSTRAINT [PK_tblContract] PRIMARY KEY CLUSTERED ([fldContractID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblTransactionType.  Identifies the type of transaction including sale, lease, finance, balloon lease.  Used in financial products like GAP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractTransactionTypeID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s Last Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractLName';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the Underwriting type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractUnderwriterTypeID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'legacy field from postgres', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractVoidReason';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This identifies when the product was purchased new.  Typically only applies to automotive warranty products.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractInServiceDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The make of tire on a vehicle at the time of contract purchase.  Used for products like Tire and Rim warranty.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractTireMake';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Flags the contract as First Nations Tax Exempt', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractFirstNationExempt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the Product Type and relates to tblProduct.  examples include Auto Warranty, ATV warranty, GAP insurance, etc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldProductID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s Address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractAddress1';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s province of residence.  Relates to tblProvince', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractProvinceID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'gap unit type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractGapUnitTypeID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Relates to tblDealer.  Identifies the selling Dealer at the time of sale.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractContractDealerID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The Vehicle Identification Number that is industry standard for automotive vehicles, RVs, etc.  For products that don''t use the industry standard VIN, use fldContractSerialNumber', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractVIN';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Not currently used.  Not a VIN serial number but a serial number used for products that aren''t vehicles and don''t have an industry standard decodable Identification Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractSerialNumber';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Field used to track multiple products in a single transaction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractSaleID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Make of vehicle used for products like warranties, GAP, etc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractMake';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'customer''s employer contact person for certain products like job loss and disability', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractEmployerContactName';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblFinance.  Identifies if it''s a lease, loan, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractTypeOfFinanceID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The expiry date or expected expiry date of a warranty contract', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractCompletedDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date the contract was purchased.  May not be the date the contract goes into effect.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPurchaseDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s Email Address:  Used for Product Confirmation Email', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractEmail';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'refers to job loss insurance.  the customer''s monthly loan/lease payment', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPaymentAmount';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'temporary field.  Dealer cost of term including options before taxes', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractDealerCost';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s Addendum Address:  Unit number, PO Box, etx', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractAddress2';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to posgres.applications table imported from original legacy database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractOldID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Is the odometer reading of the vehicle when the contract was purchased', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractOdometer';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Not in use', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractFinanceTerm';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'retail price of the term customer paid ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPurchasePrice';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'a utility field for the dealer to put in notes.  Notes are not shown on contract and are only between dealer and LAP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractNotes';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date of the most recent change or creation of the contract record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractLastUpated';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s country of residence: relates to tblCountry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractCountryID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Relates to tblElectric.  Currently not in use but would be used to identify the battery type used in electric vehicles.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractElectricID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblVehicleDescription.  Currently not in use.  Would be used to describe the vehicle as a truck, car, SUV, Transport Trailer, etc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractVehicleDescription';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Model of vehicle. Used for products like warranties, GAP, etc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractModel';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'customer''s Employer contact phone number. used for certain products like job loss and disability', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractEmployerContactPhone';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Not generally used except for migrating data from old database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPaid';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Is a utility field that dealers can use to track their own inventory stock number of the vehicle/product on which a warranty applies.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractStockNumber';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'redundant field.  Not in use.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractOLDContractNumber';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'refers to weekly, biweekly, monthly payment frequency', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPaymentFrequencyID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Special GAP PST amount.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPST';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s Mobile Phone Number', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPhone';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the engine size of the vehicle in cubic litres volume.  specifically for automotive vehicles.  Smaller vehicles like motorcycles, snowmobiles, etc that use Cubic Centimetres (CCs) will have the engine size stored in fldContractEngineCC', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractEngineSize';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This is the name of the sales person from the dealership that sold the product/service to the customer.  ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractSalesPerson';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Redundant field not in use', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractTaxExempt';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblDriveTrain.  Currently not in use but would identify drive train of a vehicle.  Drive shaft, Belt drive, chain drive, etc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractDriveTrainID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Months term for warranty and Finance Term in months for GAP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractMonths';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'legacy from CGW.  Not in use', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractCorrosionProtectionTypeNAS';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The Status relates to tblStatus.  Contract Status identifies if the contract is Pending, Accepted, Cancelled, Void, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractStatusID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblVehicleUsage.  Identifies if the vehicle is used for personal or commercial use', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractVehicleUsageID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'customer''s birth date.  this is used for certain products like disability insurance, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractBirthDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date the contract liability goes into effect.  If the vehicle has existing factory warranty at the time of purchase, this contract would become effective when the factory warranty expires.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractEffectiveDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblFuelType.  Identifies the fuel type for the vehicle.  examples:  gasoline, propane, hydrogen, electric battery, etc.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractFuelTypeID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Year of vehicle.  Used for products like warranties, GAP, etc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractYear';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Not used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractEmployerTerm';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s Postal code of residence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractPostalCode';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary Key', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s First Name', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractFName';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies who the lien holder is on the product this contract applies to.  Only applicable for products where financing is involved.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractLienHolder';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies if the vehicle has existing factory warranty at the time of contract sale.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractFactoryWarranty';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Currently not in use but would identify if the factory warranty on the purchased vehicle had a prematurely cancelled factory warranty.  Typically due to a car accident, or fraudulently modified odometer reading or an out of country imported vehicle.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractFactoryWarrantyCancelled';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the Contract was Created', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractCreatedDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Automotive tire size specification.  Used for products like Tire and Rim warranty where Tire size is needed.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractTireSize';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The delivery date refers to the date the customer takes possession of the vehicle.  The contract can be created today, but the customer picks up their car next week and therefore the warranty would typically start on the delivery date.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractDeliveryDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Amortization Term in months for GAP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractGAPAmortizationTerm';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Relates to tblAccount.  Identifies the Lions Auto sales rep assigned to the selling dealer at the time of sale.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractSalesRepID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer''s City of residence', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractCity';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vehicle retail price', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractSellingPrice';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblVehicleAge.  Identifies if it''s a new or used vehicle', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractVehicleAgeID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'customer''s Employer.  Used for certain products like Job Loss and disability insurance', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContracEmployer';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Trim of vehicle refers to version of Model. A Hyundai Tucson LX would have a Trim ''LX''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractTrim';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Used for GAP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractMinimumPremium';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'IMPORTANT:  This field relates to tblTerm and identifies the exact Term (product/service) sold to the customer.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractTermDetailsID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Not used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractEmployerTermUnit';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'not used.  For GAP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractNegativeEquityAmount';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This field is usd for the remittance function.  If this contract is checked in the remittance then it will be checked here.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContract', @level2type = N'COLUMN', @level2name = N'fldContractRemittance';


GO

