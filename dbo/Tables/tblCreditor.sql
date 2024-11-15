CREATE TABLE [dbo].[tblCreditor] (
    [fldCreditorID]         INT            IDENTITY (1, 1) NOT NULL,
    [fldCreditorName]       NVARCHAR (MAX) NULL,
    [fldCreditorAddress1]   NVARCHAR (50)  NULL,
    [fldCreditorAddress2]   NVARCHAR (50)  NULL,
    [fldCreditorCity]       NVARCHAR (50)  NULL,
    [fldCreditorProvinceID] INT            NULL,
    [fldCreditorPostalCode] NVARCHAR (50)  NULL,
    [fldCreditorPhone]      NVARCHAR (50)  NULL,
    [fldCreditorCountryID]  INT            NULL,
    CONSTRAINT [PK_tblCreditor] PRIMARY KEY CLUSTERED ([fldCreditorID] ASC)
);


GO

