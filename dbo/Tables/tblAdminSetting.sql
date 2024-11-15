CREATE TABLE [dbo].[tblAdminSetting] (
    [fldAdminSettingID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldAdminSettingName]        NVARCHAR (100) NOT NULL,
    [fldAdminSettingDescription] NVARCHAR (500) NULL,
    [fldAdminSettingActive]      BIT            NOT NULL,
    [fldAdminSettingValue]       NVARCHAR (50)  NULL
);


GO

