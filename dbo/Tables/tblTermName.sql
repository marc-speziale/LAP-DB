CREATE TABLE [dbo].[tblTermName] (
    [fldTermNameID]        INT             IDENTITY (1, 1) NOT NULL,
    [fldTermName]          NVARCHAR (50)   NULL,
    [fldTermNameActive]    BIT             NULL,
    [fldTermNameOrder]     DECIMAL (18, 2) NULL,
    [fldTermNameProductID] INT             NULL,
    [fldTermNameColour]    NVARCHAR (50)   NULL,
    CONSTRAINT [PK_tblTermName] PRIMARY KEY CLUSTERED ([fldTermNameID] ASC)
);


GO

