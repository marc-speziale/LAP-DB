CREATE TABLE [dbo].[tblClaimNote] (
    [fldClaimNoteID]          INT      IDENTITY (1, 1) NOT NULL,
    [fldClaimNote]            TEXT     NULL,
    [fldClaimNoteCreatedDate] DATETIME NULL,
    [fldClaimNoteClaimID]     INT      NULL,
    [fldClaimNotePrivate]     BIT      CONSTRAINT [DF_tblClaimNote_fldClaimNotePrivate] DEFAULT ((1)) NOT NULL,
    [fldClaimNoteAccountID]   INT      NULL,
    CONSTRAINT [PK_tblClaimNote] PRIMARY KEY CLUSTERED ([fldClaimNoteID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Flagged means that this note is for internal use only', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblClaimNote', @level2type = N'COLUMN', @level2name = N'fldClaimNotePrivate';


GO

