CREATE TABLE [dbo].[tblVehicleUsage] (
    [fldVehicleUsageID]          INT           IDENTITY (1, 1) NOT NULL,
    [fldVehicleUsageName]        NVARCHAR (50) NOT NULL,
    [fldVehicleUsageDescription] NVARCHAR (50) NULL,
    CONSTRAINT [PK_tblVehicleUsage] PRIMARY KEY CLUSTERED ([fldVehicleUsageID] ASC)
);


GO

