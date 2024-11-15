CREATE TABLE [dbo].[tblDealerNote] (
    [fldDealerNoteID]        INT      IDENTITY (1, 1) NOT NULL,
    [fldDealerNoteDealerID]  INT      NOT NULL,
    [fldDealerNote]          TEXT     NOT NULL,
    [fldDealerNoteAccountID] INT      NOT NULL,
    [fldDealerNoteDateAdded] DATETIME NULL,
    CONSTRAINT [PK_tblDealerNote] PRIMARY KEY CLUSTERED ([fldDealerNoteID] ASC)
);


GO

