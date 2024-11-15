CREATE TABLE [dbo].[tblNotes] (
    [fldNotesID]             INT      IDENTITY (1, 1) NOT NULL,
    [fldNotes]               TEXT     NOT NULL,
    [fldNotesDate]           DATETIME NOT NULL,
    [fldNotesType]           INT      NOT NULL,
    [fldNotesEnteredBy]      INT      NOT NULL,
    [fldNotesClaimID]        INT      CONSTRAINT [DF_tblNotes_fldNotesClaimID] DEFAULT ((0)) NOT NULL,
    [fldNotesEmpID]          INT      CONSTRAINT [DF_tblNotes_fldNotesEmpID] DEFAULT ((0)) NOT NULL,
    [fldNotesContractID]     INT      CONSTRAINT [DF_tblNotes_fldNotesContractID] DEFAULT ((0)) NOT NULL,
    [fldNotesUnderwriterID]  INT      CONSTRAINT [DF_tblNotes_fldNotesUnderwriterID] DEFAULT ((0)) NOT NULL,
    [fldNotesDealerID]       INT      CONSTRAINT [DF_tblNotes_fldNotesDealerID] DEFAULT ((0)) NOT NULL,
    [fldNotesRebateID]       INT      CONSTRAINT [DF_tblNotes_fldNotesRebateID] DEFAULT ((0)) NOT NULL,
    [fldNotesTransactionID]  INT      CONSTRAINT [DF_tblNotes_fldNotesTransactionID] DEFAULT ((0)) NOT NULL,
    [fldNotesCommissionID]   INT      CONSTRAINT [DF_tblNotes_fldNotesCommissionID] DEFAULT ((0)) NOT NULL,
    [fldNotesRepairCentreID] INT      CONSTRAINT [DF_tblNotes_fldNotesRepairCentreID] DEFAULT ((0)) NOT NULL,
    [fldNotesAccountID]      INT      CONSTRAINT [DF_tblNotes_fldNotesAccountID] DEFAULT ((0)) NOT NULL,
    [fldNotesDocumentID]     INT      CONSTRAINT [DF_tblNotes_fldNotesDocumentID] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblNotes] PRIMARY KEY CLUSTERED ([fldNotesID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblAccount.fldAccountID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblNotes', @level2type = N'COLUMN', @level2name = N'fldNotesEnteredBy';


GO

