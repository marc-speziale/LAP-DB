CREATE TABLE [dbo].[tblResetPassword] (
    [FldResetPasswordID]        INT              IDENTITY (1, 1) NOT NULL,
    [FldResetPasswordUID]       UNIQUEIDENTIFIER NOT NULL,
    [FldResetPasswordAccountID] INT              NOT NULL,
    [FldResetPasswordDate]      DATETIME         NOT NULL,
    [FldResetPasswordUsed]      BIT              CONSTRAINT [DF_tblResetPassword_FldResetPasswordUsed] DEFAULT ((0)) NOT NULL
);


GO

