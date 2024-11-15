CREATE TABLE [dbo].[tblAccountType] (
    [fldAccountTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldAccountTypeName]        NVARCHAR (50)  NOT NULL,
    [fldAccountTypePermissions] INT            NOT NULL,
    [fldAccountTypeDescription] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblAccountType] PRIMARY KEY CLUSTERED ([fldAccountTypeID] ASC)
);


GO

