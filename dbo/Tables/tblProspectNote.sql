CREATE TABLE [dbo].[tblProspectNote] (
    [fldProspectNoteID]          INT      IDENTITY (1, 1) NOT NULL,
    [fldProspectNoteNote]        TEXT     NULL,
    [fldProspectNoteCreatedBy]   INT      NULL,
    [fldProspectNoteCreatedDate] DATETIME NULL,
    [fldProspectNoteProspectID]  INT      NULL,
    CONSTRAINT [PK_tblProspectNote] PRIMARY KEY CLUSTERED ([fldProspectNoteID] ASC)
);


GO

