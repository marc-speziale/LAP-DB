CREATE TABLE [dbo].[tblProduct] (
    [fldProductID]                         INT            IDENTITY (1, 1) NOT NULL,
    [fldProductName]                       NVARCHAR (50)  NULL,
    [fldProductDescription]                NVARCHAR (MAX) NULL,
    [fldProductCode]                       NVARCHAR (50)  NULL,
    [fldProductActive]                     BIT            CONSTRAINT [DF_tblProduct_fldProductActive] DEFAULT ((1)) NOT NULL,
    [fldProductContractTemplateCategoryID] INT            NULL,
    CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED ([fldProductID] ASC)
);


GO

