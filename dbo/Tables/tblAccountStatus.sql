CREATE TABLE [dbo].[tblAccountStatus] (
    [fldAccountStatusID] INT            IDENTITY (1, 1) NOT NULL,
    [fldAccountStatus]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblAccountStatus] PRIMARY KEY CLUSTERED ([fldAccountStatusID] ASC)
);


GO

