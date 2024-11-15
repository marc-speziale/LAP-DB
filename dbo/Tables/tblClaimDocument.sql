CREATE TABLE [dbo].[tblClaimDocument] (
    [fldClaimDocumentID]         INT            IDENTITY (1, 1) NOT NULL,
    [fldClaimDocumentName]       NVARCHAR (MAX) NULL,
    [fldClaimDocumentUid]        INT            NULL,
    [fldClaimDocumentClaimID]    INT            NULL,
    [fldClaimDocumentUploadDate] DATETIME       NULL,
    CONSTRAINT [PK_tblClaimDocument] PRIMARY KEY CLUSTERED ([fldClaimDocumentID] ASC)
);


GO

