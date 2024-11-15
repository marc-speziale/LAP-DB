CREATE TABLE [dbo].[tblVehicleAge] (
    [fldVehicleAgeID]          INT           IDENTITY (1, 1) NOT NULL,
    [fldVehicleAgeName]        NVARCHAR (50) NOT NULL,
    [fldVehicleAgeDescription] NVARCHAR (50) NULL,
    CONSTRAINT [PK_tblVehicleAge] PRIMARY KEY CLUSTERED ([fldVehicleAgeID] ASC)
);


GO

