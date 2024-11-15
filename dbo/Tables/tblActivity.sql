CREATE TABLE [dbo].[tblActivity] (
    [fldActivityID]        INT            IDENTITY (1, 1) NOT NULL,
    [fldActivity]          NVARCHAR (MAX) NOT NULL,
    [fldActivityStart]     DATETIME       NOT NULL,
    [fldActivityEnd]       DATETIME       NOT NULL,
    [fldActivityAccountID] INT            NOT NULL,
    [fldActivityIP]        NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_tblActivity] PRIMARY KEY CLUSTERED ([fldActivityID] ASC)
);


GO

