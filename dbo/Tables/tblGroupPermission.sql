CREATE TABLE [dbo].[tblGroupPermission] (
    [fldGroupPermissionID]           INT IDENTITY (1, 1) NOT NULL,
    [fldGroupPermissionGroupID]      INT NULL,
    [fldGroupPermissionPermissionID] INT NULL,
    CONSTRAINT [PK_tblGroupPermission] PRIMARY KEY CLUSTERED ([fldGroupPermissionID] ASC)
);


GO

