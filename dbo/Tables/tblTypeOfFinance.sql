CREATE TABLE [dbo].[tblTypeOfFinance] (
    [fldTypeOfFinanceID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldTypeOfFinanceName]        NVARCHAR (50)  NULL,
    [fldTypeOfFinanceDescription] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblTypeOfFinance] PRIMARY KEY CLUSTERED ([fldTypeOfFinanceID] ASC)
);


GO

