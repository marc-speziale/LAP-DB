CREATE TABLE [dbo].[tblContractTemplateCategory] (
    [fldContractTemplateCategoryID]     INT           IDENTITY (1, 1) NOT NULL,
    [fldContractTemplateCategoryName]   NVARCHAR (50) NULL,
    [fldContractTemplateCategoryActive] BIT           CONSTRAINT [DF_tblContractTemplateCategory_fldContractTemplateCategoryActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_tblContractTemplateCategory] PRIMARY KEY CLUSTERED ([fldContractTemplateCategoryID] ASC)
);


GO

