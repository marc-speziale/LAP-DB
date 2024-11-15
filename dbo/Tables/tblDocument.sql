CREATE TABLE [dbo].[tblDocument] (
    [fldDocumentID]             INT            IDENTITY (1, 1) NOT NULL,
    [fldDocumentName]           NVARCHAR (MAX) NULL,
    [fldDocumentAccountID]      INT            CONSTRAINT [DF_tblDocument_fldDocumentAccountID] DEFAULT ((0)) NOT NULL,
    [fldDocumentUploadDate]     DATETIME       NULL,
    [fldDocumentOldID]          INT            NULL,
    [fldDocumentOldName]        NVARCHAR (MAX) NULL,
    [fldDocumentDocumentTypeID] INT            NOT NULL,
    [fldDocumentContractID]     INT            CONSTRAINT [DF_tblDocument_fldDocumentContractID] DEFAULT ((0)) NOT NULL,
    [fldDocumentClaimID]        INT            CONSTRAINT [DF_tblDocument_fldDocumentClaimID] DEFAULT ((0)) NOT NULL,
    [fldDocumentDealerID]       INT            CONSTRAINT [DF_tblDocument_fldDocumentDealerID] DEFAULT ((0)) NOT NULL,
    [fldDocumentEmpID]          INT            CONSTRAINT [DF_tblDocument_fldDocumentEmpID] DEFAULT ((0)) NOT NULL,
    [fldDocumentMimeType]       NVARCHAR (100) NULL,
    CONSTRAINT [PK_tblDocument] PRIMARY KEY CLUSTERED ([fldDocumentID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Used only for importing documents from old database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDocument', @level2type = N'COLUMN', @level2name = N'fldDocumentOldID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'DAte the document was uploaded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDocument', @level2type = N'COLUMN', @level2name = N'fldDocumentUploadDate';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblDocumentType', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDocument', @level2type = N'COLUMN', @level2name = N'fldDocumentDocumentTypeID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Used only for importing documents from old database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDocument', @level2type = N'COLUMN', @level2name = N'fldDocumentOldName';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Relates to tblAccount to identify who uploaded the document', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDocument', @level2type = N'COLUMN', @level2name = N'fldDocumentAccountID';


GO

