CREATE TABLE [dbo].[tblTrim] (
    [fldTrimID]             INT            IDENTITY (1, 1) NOT NULL,
    [fldTrimManufacturerID] INT            NULL,
    [fldModelID]            INT            NULL,
    [fldTrimClass]          INT            NULL,
    [fldTrimProductID]      INT            NOT NULL,
    [fldTrimTrim]           NVARCHAR (255) NOT NULL
);


GO

