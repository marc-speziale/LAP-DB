CREATE TABLE [dbo].[tblTermDetailClass] (
    [fldTermDetailClassID]           INT IDENTITY (1, 1) NOT NULL,
    [fldTermDetailClassTermDetailID] INT NULL,
    [fldTermDetailClass]             INT NULL,
    CONSTRAINT [PK_tblTermDetailClass] PRIMARY KEY CLUSTERED ([fldTermDetailClassID] ASC)
);


GO

