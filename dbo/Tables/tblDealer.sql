CREATE TABLE [dbo].[tblDealer] (
    [fldDealerID]                      INT            IDENTITY (1, 1) NOT NULL,
    [fldDealerName]                    NVARCHAR (MAX) NOT NULL,
    [fldDealerLicenseNumber]           NVARCHAR (50)  NULL,
    [fldDealerAddress1]                NVARCHAR (50)  NULL,
    [fldDealerAddress2]                NVARCHAR (50)  NULL,
    [fldDealerCity]                    NVARCHAR (50)  NULL,
    [fldDealerPostalCode]              NVARCHAR (50)  NULL,
    [fldDealerProvinceID]              INT            NOT NULL,
    [fldDealerCountryID]               INT            NOT NULL,
    [fldDealerStatusID]                INT            NOT NULL,
    [fldDealerControllerEmail]         NVARCHAR (MAX) NULL,
    [fldDealerContactName]             NVARCHAR (MAX) NULL,
    [fldDealerContactEmail]            NVARCHAR (MAX) NULL,
    [fldDealerContactPhone]            NVARCHAR (50)  NULL,
    [fldDealerActive]                  TINYINT        NULL,
    [fldDealerDateAdded]               DATETIME       NULL,
    [fldDealerRepID]                   INT            NULL,
    [fldDealerImportNotes]             NVARCHAR (MAX) NULL,
    [fldDealerImportInsurance]         NVARCHAR (50)  NULL,
    [fldDealerAdded]                   DATETIME       NULL,
    [fldDealerLegalName]               NVARCHAR (MAX) CONSTRAINT [DF_tblDealer_fldDealerLegalName] DEFAULT ('') NOT NULL,
    [fldDealerShowRetailPriceWarranty] BIT            CONSTRAINT [DF_tblDealer_fldDealerShowRetailPriceWarranty] DEFAULT ((0)) NOT NULL,
    [fldDealerShowPriceOnPage]         BIT            CONSTRAINT [DF_tblDealer_fldDealerShowPriceOnPage] DEFAULT ((0)) NOT NULL,
    [fldDealerManualGAPTerm]           BIT            CONSTRAINT [DF_tblDealer_fldDealerManualGAPTerm] DEFAULT ((0)) NOT NULL,
    [fldDealerTest]                    BIT            CONSTRAINT [DF_tblDealer_fldDealerTest] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblDealer] PRIMARY KEY CLUSTERED ([fldDealerID] ASC)
);


GO

