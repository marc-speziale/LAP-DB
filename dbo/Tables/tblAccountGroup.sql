CREATE TABLE [dbo].[tblAccountGroup] (
    [fldAccountGroupID]        INT IDENTITY (1, 1) NOT NULL,
    [fldAccountGroupAccountID] INT NOT NULL,
    [fldAccountGroupGroupID]   INT NOT NULL,
    CONSTRAINT [PK_tblAccountGroup] PRIMARY KEY CLUSTERED ([fldAccountGroupID] ASC)
);


GO

