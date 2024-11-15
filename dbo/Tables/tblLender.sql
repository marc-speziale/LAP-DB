CREATE TABLE [dbo].[tblLender] (
    [fldLenderID]         INT            IDENTITY (1, 1) NOT NULL,
    [fldLenderName]       NVARCHAR (100) NOT NULL,
    [fldLenderAddress]    NVARCHAR (MAX) NULL,
    [fldLenderCity]       NVARCHAR (50)  NULL,
    [fldLenderProvince]   INT            CONSTRAINT [DF_tblLender_fldLenderProvince] DEFAULT ((9)) NOT NULL,
    [fldLenderCountryID]  INT            CONSTRAINT [DF_Table_1_fldCountryID] DEFAULT ((1)) NOT NULL,
    [fldLenderPhone]      NVARCHAR (50)  NULL,
    [fldLenderGlobal]     INT            CONSTRAINT [DF_tblLender_fldLenderGlobal] DEFAULT ((0)) NOT NULL,
    [fldLenderPostalCode] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_tblLender] PRIMARY KEY CLUSTERED ([fldLenderID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1= global  0 = not global', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblLender', @level2type = N'COLUMN', @level2name = N'fldLenderGlobal';


GO

