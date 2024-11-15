CREATE TABLE [dbo].[tblDriveTrain] (
    [fldDriveTrainID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldDriveTrainName]        NVARCHAR (MAX) NULL,
    [fldDriveTrainDescription] NVARCHAR (MAX) NULL,
    [fldDriveTrainDefault]     BIT            NULL,
    CONSTRAINT [PK_tblDriveTrain] PRIMARY KEY CLUSTERED ([fldDriveTrainID] ASC)
);


GO

