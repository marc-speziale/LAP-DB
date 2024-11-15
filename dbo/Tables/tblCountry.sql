CREATE TABLE [dbo].[tblCountry] (
    [fldCountryID]   INT           IDENTITY (1, 1) NOT NULL,
    [fldCountry]     NVARCHAR (50) NOT NULL,
    [fldCountryCode] NCHAR (10)    NOT NULL,
    CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED ([fldCountryID] ASC)
);


GO

