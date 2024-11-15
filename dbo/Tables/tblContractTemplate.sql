CREATE TABLE [dbo].[tblContractTemplate] (
    [fldContractTemplateID]        INT            IDENTITY (1, 1) NOT NULL,
    [fldContractTemplateName]      NVARCHAR (MAX) NULL,
    [fldContractTemplateProductID] INT            NULL,
    [fldContractTemplateDate]      DATETIME       NULL,
    [fldContractTemplatePDFName]   NVARCHAR (MAX) NULL,
    [fldContractTemplateNotes]     TEXT           NULL,
    [fldContractTemplateSeriesID]  INT            CONSTRAINT [DF_tblContractTemplate_fldContractTemplateUnderwriterID] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_tblContractTemplate] PRIMARY KEY CLUSTERED ([fldContractTemplateID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblContractTemplateCategoryID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContractTemplate', @level2type = N'COLUMN', @level2name = N'fldContractTemplateProductID';


GO

