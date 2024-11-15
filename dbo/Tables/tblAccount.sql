CREATE TABLE [dbo].[tblAccount] (
    [fldAccountID]              INT              IDENTITY (1, 1) NOT NULL,
    [fldAccountFName]           NVARCHAR (50)    NULL,
    [fldAccountLName]           NVARCHAR (50)    NULL,
    [fldAccountCompanyName]     NVARCHAR (50)    NULL,
    [fldAccountAddress1]        NVARCHAR (50)    NULL,
    [fldAccountAddress2]        NVARCHAR (50)    NULL,
    [fldAccountCity]            NVARCHAR (50)    NULL,
    [fldAccountProvinceID]      INT              NULL,
    [fldAccountCountryID]       INT              NULL,
    [fldAccountPostalCode]      NCHAR (10)       NULL,
    [fldAccountPhone]           NVARCHAR (50)    NULL,
    [fldAccountFax]             NVARCHAR (50)    NULL,
    [fldAccountEmail]           NVARCHAR (255)   NULL,
    [fldAccountCreatedDate]     DATETIME         NULL,
    [fldAccountAccountStatusID] INT              NULL,
    [fldAccountUsername]        NVARCHAR (100)   NOT NULL,
    [fldAccountPassword]        BINARY (64)      NULL,
    [fldAccountSalt]            UNIQUEIDENTIFIER NULL,
    [fldAccountClaimAdjustor]   BIT              CONSTRAINT [DF__tblAccoun__fldAc__341F99B2] DEFAULT ((0)) NOT NULL,
    [fldAccountDealerID]        INT              CONSTRAINT [DF_tblAccount_fldAccountDealerID] DEFAULT ((0)) NULL,
    [fldAccountEmpID]           INT              CONSTRAINT [DF_tblAccount_fldAccountEmpID] DEFAULT ((0)) NULL,
    [fldAccountRep]             BIT              CONSTRAINT [DF__tblAccoun__fldAc__3513BDEB] DEFAULT ((0)) NULL,
    [fldAccountUnderwriterID]   INT              CONSTRAINT [DF_tblAccount_fldAccountUnderwriterID] DEFAULT ((0)) NULL,
    [fldAccountPasswordLegacy]  TINYINT          CONSTRAINT [DF__tblAccoun__fldAc__3607E224] DEFAULT ((1)) NOT NULL,
    [fldAccountOldPassword]     NVARCHAR (64)    NULL,
    [fldAccountGapEnabled]      INT              CONSTRAINT [DF__tblAccoun__fldAc__36FC065D] DEFAULT ((0)) NULL,
    [fldAccountLatitude]        NVARCHAR (50)    NULL,
    [fldAccountLongitude]       NVARCHAR (50)    NULL,
    [fldAccountAccountTypeID]   INT              NULL,
    [fldAccountOldUserID]       INT              CONSTRAINT [DF_tblAccount_fldAccountOldUserID] DEFAULT ((0)) NOT NULL,
    [fldAccountLastLogin]       DATETIME         NULL,
    [fldAccountDealerLicense]   NVARCHAR (50)    NULL,
    CONSTRAINT [PK_tblAccount] PRIMARY KEY CLUSTERED ([fldAccountID] ASC),
    CONSTRAINT [FK_tblAccount_tblProvince] FOREIGN KEY ([fldAccountProvinceID]) REFERENCES [dbo].[tblProvince] ([fldProvinceID])
);


GO
ALTER TABLE [dbo].[tblAccount] NOCHECK CONSTRAINT [FK_tblAccount_tblProvince];


GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblAccount_fldAccountUsername]
    ON [dbo].[tblAccount]([fldAccountUsername] ASC);


GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblAccount_fldAccountEmail]
    ON [dbo].[tblAccount]([fldAccountEmail] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Relates to tblAccountType describing role and Permissions level', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblAccount', @level2type = N'COLUMN', @level2name = N'fldAccountAccountTypeID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary Key from old database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblAccount', @level2type = N'COLUMN', @level2name = N'fldAccountOldUserID';


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This field is not used.  Password string is in fldAccountOldPassword field', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblAccount', @level2type = N'COLUMN', @level2name = N'fldAccountPassword';


GO

