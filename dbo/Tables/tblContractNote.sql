CREATE TABLE [dbo].[tblContractNote] (
    [fldContractNoteID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldContractNote]            NVARCHAR (MAX) NOT NULL,
    [fldContractNoteCreatedDate] DATETIME       NOT NULL,
    [fldContractNoteContractID]  INT            NOT NULL,
    [fldContractNoteAccountID]   INT            NOT NULL
);


GO

