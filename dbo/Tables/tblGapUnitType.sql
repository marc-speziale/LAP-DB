CREATE TABLE [dbo].[tblGapUnitType] (
    [fldGapUnitTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldGapUnitTypeName]        NVARCHAR (50)  NULL,
    [fldGapUnitTypeDescription] NVARCHAR (MAX) NULL,
    [fldGapUnitTypeProductID]   INT            NULL,
    CONSTRAINT [PK_tblGapUnitType] PRIMARY KEY CLUSTERED ([fldGapUnitTypeID] ASC)
);


GO

