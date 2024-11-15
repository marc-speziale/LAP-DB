CREATE TABLE [dbo].[tblCorporate] (
    [fldCorporateID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldCorporateName]        NVARCHAR (50)  NOT NULL,
    [fldCorporateLegalName]   NVARCHAR (50)  NULL,
    [fldCorporateAddress1]    NVARCHAR (50)  NULL,
    [fldCorporateAddress2]    NVARCHAR (50)  NULL,
    [fldCorporateCity]        NVARCHAR (50)  NULL,
    [fldCorporateProvinceID]  INT            NULL,
    [fldCorporateCountryID]   INT            NULL,
    [fldCorporatePostalCode]  NCHAR (10)     NULL,
    [fldCorporatePhone]       NVARCHAR (50)  NULL,
    [fldCorporateTollFree]    NVARCHAR (50)  NULL,
    [fldCorporateFax]         NVARCHAR (50)  NULL,
    [fldCorporateWebsite]     NVARCHAR (MAX) NULL,
    [fldCorproateEmail]       NVARCHAR (50)  NULL,
    [fldCorproateHST]         NVARCHAR (50)  NULL,
    [fldCorporateLastUpdated] DATETIME       NULL,
    CONSTRAINT [PK_tblCorporate] PRIMARY KEY CLUSTERED ([fldCorporateID] ASC)
);


GO

