CREATE TABLE [dbo].[tblPermissionCategory] (
    [fldPermissionCategoryID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldPermissionCategoryName]        NVARCHAR (50)  NULL,
    [fldPermissionCategoryActive]      BIT            NULL,
    [fldPermissionCategoryDescription] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblPermissionCategory] PRIMARY KEY CLUSTERED ([fldPermissionCategoryID] ASC)
);


GO

