CREATE TABLE [dbo].[tblProvince] (
    [fldProvinceID]                     INT             IDENTITY (1, 1) NOT NULL,
    [fldProvinceName]                   NVARCHAR (50)   NOT NULL,
    [fldProvinceCode]                   NCHAR (10)      NOT NULL,
    [fldProvincePST]                    NUMERIC (18, 3) CONSTRAINT [DF_tblProvince_fldProvincePST] DEFAULT ((0)) NULL,
    [fldProvinceHST]                    NUMERIC (18, 3) CONSTRAINT [DF_tblProvince_fldProvinceHST] DEFAULT ((5)) NULL,
    [fldProvinceOtherSalesTax]          NUMERIC (18, 3) CONSTRAINT [DF_tblProvince_fldProvinceOtherSalesTax] DEFAULT ((0)) NULL,
    [fldProvinceCountryID]              INT             CONSTRAINT [DF_tblProvince_fldProvinceCountryID] DEFAULT ((2)) NOT NULL,
    [fldProvincePremiumTax]             DECIMAL (18, 2) CONSTRAINT [DF_tblProvince_fldProvincePremiumTax] DEFAULT ((0)) NULL,
    [fldProvinceInsurance]              BIT             NULL,
    [fldProvinceGAPPST]                 DECIMAL (18, 3) CONSTRAINT [DF_tblProvince_fldProvinceGAPPST] DEFAULT ((0)) NOT NULL,
    [fldProvinceGAPHST]                 DECIMAL (18, 3) CONSTRAINT [DF_tblProvince_fldProvinceGAPHST] DEFAULT ((0)) NOT NULL,
    [fldProvinceMBI]                    BIT             CONSTRAINT [DF_tblProvince_fldProvinceMBI] DEFAULT ((0)) NOT NULL,
    [fldProvinceGAPPSTShowBox]          BIT             CONSTRAINT [DF_tblProvince_fldProvinceGAPPSTShowBox] DEFAULT ((0)) NOT NULL,
    [fldProvinceShowEnhancedFormFields] BIT             CONSTRAINT [DF_tblProvince_fldProvinceShowEnhancedFormFields] DEFAULT ((0)) NOT NULL,
    [fldProvinceRST]                    DECIMAL (18, 3) CONSTRAINT [DF_tblProvince_fldProvinceRST] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblProvince] PRIMARY KEY CLUSTERED ([fldProvinceID] ASC)
);


GO

