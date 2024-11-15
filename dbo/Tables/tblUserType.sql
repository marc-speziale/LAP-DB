CREATE TABLE [dbo].[tblUserType] (
    [fldUserTypeID]          INT             IDENTITY (1, 1) NOT NULL,
    [fldUserTypeName]        NVARCHAR (50)   NOT NULL,
    [fldUserTypeDescription] NVARCHAR (MAX)  NOT NULL,
    [fldUserTypePermission]  DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_tblUserType] PRIMARY KEY CLUSTERED ([fldUserTypeID] ASC)
);


GO

