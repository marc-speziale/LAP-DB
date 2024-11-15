CREATE TABLE [dbo].[tblDealerClassOverride] (
    [fldDealerClassOverrideID]             INT IDENTITY (1, 1) NOT NULL,
    [fldDealerClassOverrideManufacturerID] INT NULL,
    [fldDealerClassOverrideModelID]        INT NULL,
    [fldDealerClassOverrideTrimID]         INT NULL,
    [fldDealerClassOverrideDealerID]       INT NOT NULL,
    [fldDealerClassOverrideClass]          INT NOT NULL,
    [fldDealerClassOverrideProductID]      INT NOT NULL
);


GO

