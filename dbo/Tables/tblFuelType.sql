CREATE TABLE [dbo].[tblFuelType] (
    [fldFuelTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldFuelTypeName]        NVARCHAR (50)  NOT NULL,
    [fldFuelTypeDescription] NVARCHAR (MAX) NULL,
    [fldFuelTypeDefault]     BIT            NULL,
    CONSTRAINT [PK_tblFuelType] PRIMARY KEY CLUSTERED ([fldFuelTypeID] ASC)
);


GO

