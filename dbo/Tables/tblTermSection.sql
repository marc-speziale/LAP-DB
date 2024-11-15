CREATE TABLE [dbo].[tblTermSection] (
    [fldTermSectionID]                       INT             IDENTITY (1, 1) NOT NULL,
    [fldTermSectionName]                     NVARCHAR (100)  NULL,
    [fldTermSectionDescription]              NVARCHAR (100)  NULL,
    [fldTermSectionText]                     TEXT            NULL,
    [fldTermSectionHTML]                     TEXT            NULL,
    [fldTermSectionSeriesID]                 INT             CONSTRAINT [DF_tblTermSection_fldTermSeries] DEFAULT ((0)) NOT NULL,
    [fldTermSectionProductID]                INT             CONSTRAINT [DF_tblTermSection_fldTermSectionProductID] DEFAULT ((6)) NOT NULL,
    [fldTermSectionOrder]                    DECIMAL (18, 2) NULL,
    [fldTermSectionIncludeBenefitsAfterThis] BIT             CONSTRAINT [DF_tblTermSection_fldTermSectionIncludeBenefitsAfterThis] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblTermSection] PRIMARY KEY CLUSTERED ([fldTermSectionID] ASC)
);


GO

