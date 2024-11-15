CREATE TABLE [dbo].[tblOdometerUnit] (
    [fldOdometerUnitID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldOdometerUnitName]        NVARCHAR (50)  NULL,
    [fldOdometerUnitDescription] NVARCHAR (MAX) NULL,
    [fldOdometerUnitDefault]     BIT            NULL,
    CONSTRAINT [PK_tblOdometerUnit] PRIMARY KEY CLUSTERED ([fldOdometerUnitID] ASC)
);


GO

