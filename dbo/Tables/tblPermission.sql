CREATE TABLE [dbo].[tblPermission] (
    [fldPermissionID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldPermissionName]        NVARCHAR (50)  NULL,
    [fldPermissionActive]      BIT            NULL,
    [fldPermissionDisplayName] NVARCHAR (50)  NULL,
    [fldPermissionDescription] NVARCHAR (MAX) NULL,
    [fldPermissionCategoryID]  INT            NULL,
    CONSTRAINT [PK_tblPermission] PRIMARY KEY CLUSTERED ([fldPermissionID] ASC)
);


GO

