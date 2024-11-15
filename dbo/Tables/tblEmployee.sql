CREATE TABLE [dbo].[tblEmployee] (
    [fldEmpID]            INT            IDENTITY (1, 1) NOT NULL,
    [fldEmpDateStarted]   DATETIME       NULL,
    [fldEmpDateDeparted]  DATETIME       NULL,
    [fldEmpSIN]           NCHAR (10)     NULL,
    [fldEmpPhoneExt]      INT            NULL,
    [fldEmpMobile]        NCHAR (10)     NULL,
    [fldEmpAddress1]      NVARCHAR (50)  NULL,
    [fldEmpAddress2]      NVARCHAR (50)  NULL,
    [fldEmpCity]          NVARCHAR (50)  NULL,
    [fldEmpProvinceID]    INT            CONSTRAINT [DF_tblEmployee_fldEmpProvinceID] DEFAULT ((9)) NOT NULL,
    [fldEmpCountryID]     INT            CONSTRAINT [DF_tblEmployee_fldEmpCountryID] DEFAULT ((1)) NOT NULL,
    [fldEmpPostalCode]    NVARCHAR (50)  NULL,
    [fldEmpPersonalEmail] NVARCHAR (MAX) NULL,
    [fldEmpLastUpdated]   DATETIME       NULL,
    [fldEmpAccountID]     INT            NULL,
    CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED ([fldEmpID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblAccount.fldAccountID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblEmployee', @level2type = N'COLUMN', @level2name = N'fldEmpAccountID';


GO

