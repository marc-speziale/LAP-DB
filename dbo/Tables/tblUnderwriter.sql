CREATE TABLE [dbo].[tblUnderwriter] (
    [fldUnderwriterID]             INT             IDENTITY (1, 1) NOT NULL,
    [fldUnderwriterName]           NVARCHAR (MAX)  NULL,
    [fldUnderwriterLegalName]      NVARCHAR (MAX)  NULL,
    [fldUnderwriterAddress1]       NVARCHAR (50)   NULL,
    [fldUnderwriterAddress2]       NVARCHAR (50)   NULL,
    [fldUnderwriterCity]           NVARCHAR (50)   NULL,
    [fldUnderwriterProvinceID]     INT             NULL,
    [fldUnderwriterCountryID]      INT             NULL,
    [fldUnderwriterPostalCode]     NVARCHAR (50)   NULL,
    [fldUnderwriterPhone]          NVARCHAR (50)   NULL,
    [fldUnderwriterEmail]          NVARCHAR (50)   NULL,
    [fldUnderwriterDateStart]      DATETIME        NOT NULL,
    [fldUnderwriterActive]         BIT             NULL,
    [fldUnderwriterContact]        NVARCHAR (50)   NULL,
    [fldUnderwriterPremiumDollar]  DECIMAL (18, 2) CONSTRAINT [DF_tblUnderwriter_fldUnderwriterPremiumDollar] DEFAULT ((0)) NULL,
    [fldUnderwriterPremiumPercent] DECIMAL (18, 2) CONSTRAINT [DF_tblUnderwriter_fldUnderwriterPremiumPercent] DEFAULT ((0)) NULL,
    [fldUnderwriterDescription]    TEXT            NULL,
    [fldUnderwriterType]           INT             NULL,
    CONSTRAINT [PK_tblUnderwriter] PRIMARY KEY CLUSTERED ([fldUnderwriterID] ASC)
);


GO

