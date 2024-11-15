CREATE TABLE [dbo].[tblVehicle] (
    [fldVehicleID]    INT           IDENTITY (1, 1) NOT NULL,
    [fldVehicleYear]  INT           NOT NULL,
    [fldVehicleMake]  NVARCHAR (50) NULL,
    [fldVehicleModel] NVARCHAR (50) NULL,
    [fldVehicleTrim]  NVARCHAR (50) NULL,
    [fldVehicleVIN]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_tblVehicle] PRIMARY KEY CLUSTERED ([fldVehicleID] ASC)
);


GO

