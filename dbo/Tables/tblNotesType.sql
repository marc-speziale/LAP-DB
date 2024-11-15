CREATE TABLE [dbo].[tblNotesType] (
    [fldNotesTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [fldNotesType]   NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tblNotesType] PRIMARY KEY CLUSTERED ([fldNotesTypeID] ASC)
);


GO

