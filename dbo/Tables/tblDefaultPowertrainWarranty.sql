CREATE TABLE [dbo].[tblDefaultPowertrainWarranty] (
    [fldDefaultPowerTrainWarrantyID]             INT IDENTITY (1, 1) NOT NULL,
    [fldDefaultPowertrainWarrantyManufacturerID] INT NULL,
    [fldDefaultPowertrainWarrantyTime]           INT NULL,
    [fldDefaultPowertrainWarrantyMileage]        INT NULL,
    [fldDefaultPowertrainWarrantyTermDetailID]   INT NULL,
    [fldDefaultPowertrainWarrantyBcTermDetailID] INT NULL,
    [fldDefaultPowertrainWarrantyYear]           INT NULL,
    CONSTRAINT [PK_tblDefaultPowertrainWarranty] PRIMARY KEY CLUSTERED ([fldDefaultPowerTrainWarrantyID] ASC)
);


GO

