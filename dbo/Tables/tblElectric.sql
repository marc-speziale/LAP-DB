CREATE TABLE [dbo].[tblElectric] (
    [fldElectricID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldElectricName]        NVARCHAR (50)  NOT NULL,
    [fldElectricDescription] NVARCHAR (MAX) NULL,
    [fldElectricDefault]     BIT            NULL,
    CONSTRAINT [PK_tblElectric] PRIMARY KEY CLUSTERED ([fldElectricID] ASC)
);


GO

