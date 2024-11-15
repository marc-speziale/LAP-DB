CREATE TABLE [dbo].[tblTermDetail] (
    [fldTermDetailID]                 INT             IDENTITY (1, 1) NOT NULL,
    [fldTermDetailTermID]             INT             NOT NULL,
    [fldTermDetailDescription]        NVARCHAR (MAX)  NULL,
    [fldTermDetailTime]               INT             NULL,
    [fldTermDetailMileage]            INT             NULL,
    [fldTermDetailPrice]              DECIMAL (18, 2) NULL,
    [fldTermDetailMinMileage]         INT             NULL,
    [fldTermDetailMaxMileage]         INT             NULL,
    [fldTermDetailMinAge]             INT             NULL,
    [fldTermDetailMaxAge]             INT             NULL,
    [fldTermDetailSKU]                NVARCHAR (50)   NULL,
    [fldTermDetailsMinFinance]        INT             NULL,
    [fldTermDetailsMaxFinance]        INT             NULL,
    [fldTermDetailClaimMax]           DECIMAL (18, 2) NULL,
    [fldTermDetailCommercial]         BIT             NULL,
    [fldTermDetailFinanceTime]        INT             NULL,
    [fldTermDetailMinFinanceTerm]     INT             NULL,
    [fldTermDetailMaxFinanceTerm]     INT             NULL,
    [fldTermDetailActive]             BIT             NULL,
    [fldTermDetailContractTemplateID] INT             NULL,
    CONSTRAINT [PK_tblTermDetail] PRIMARY KEY CLUSTERED ([fldTermDetailID] ASC)
);


GO

