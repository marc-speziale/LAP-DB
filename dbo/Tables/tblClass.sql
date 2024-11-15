CREATE TABLE [dbo].[tblClass] (
    [fldClassID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldClass]            INT            CONSTRAINT [DF_tblClass_fldClass] DEFAULT ((1)) NOT NULL,
    [fldClassDescription] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_tblClass] PRIMARY KEY CLUSTERED ([fldClassID] ASC)
);


GO

