CREATE TABLE [dbo].[tblManufacturer] (
    [fldManufacturerID]               INT           IDENTITY (1, 1) NOT NULL,
    [fldManufacturerName]             NVARCHAR (50) NULL,
    [fldManufacturerEcClassification] NVARCHAR (50) NULL,
    [fldManufacturerClassID]          INT           CONSTRAINT [DF_tblManufacturer_fldManufacturerClassID] DEFAULT ((1)) NOT NULL,
    [fldManufacturerProductID]        INT           CONSTRAINT [DF_tblManufacturer_fldManuracturerProductID] DEFAULT ((0)) NOT NULL,
    [fldManufacturerNamePattern]      NVARCHAR (50) NULL,
    CONSTRAINT [PK_tblManufacturer] PRIMARY KEY CLUSTERED ([fldManufacturerID] ASC)
);


GO

