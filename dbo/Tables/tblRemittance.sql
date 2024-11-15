CREATE TABLE [dbo].[tblRemittance] (
    [fldRemittanceID]          INT      IDENTITY (1000, 1) NOT NULL,
    [fldRemittanceDocumentID]  INT      NOT NULL,
    [fldRemittanceCreatedDate] DATETIME NOT NULL,
    [fldRemittanceCreatedBy]   INT      NOT NULL,
    [fldRemittanceDealerID]    INT      NOT NULL,
    [fldRemittanceActive]      BIT      CONSTRAINT [DF_tblRemittance_fldRemittanceActive] DEFAULT ((1)) NOT NULL
);


GO

