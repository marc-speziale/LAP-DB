CREATE TABLE [dbo].[tblTransmission] (
    [fldTransmissionID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldTransmissionName]        NVARCHAR (50)  NOT NULL,
    [fldTransmissionDescription] NVARCHAR (MAX) NULL,
    [fldTransmissionDefault]     BIT            NULL,
    CONSTRAINT [PK_tblTransmission] PRIMARY KEY CLUSTERED ([fldTransmissionID] ASC)
);


GO

