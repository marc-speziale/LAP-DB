CREATE TABLE [dbo].[tblTemplate] (
    [fldTemplateID]        INT             IDENTITY (1, 1) NOT NULL,
    [fldTemplateOldID]     INT             NOT NULL,
    [fldTemplateProductID] INT             NOT NULL,
    [fldTemplateName]      NVARCHAR (MAX)  NOT NULL,
    [fldTemplateActive]    BIT             CONSTRAINT [DF_tblTemplate_fldTemplateActive] DEFAULT ((1)) NOT NULL,
    [fldTemplateMarkup]    DECIMAL (18, 2) CONSTRAINT [DF_tblTemplate_fldTemplateMarkup] DEFAULT ((0)) NOT NULL,
    [fldTemplateInsurance] NVARCHAR (50)   NOT NULL,
    CONSTRAINT [PK_tblTemplate] PRIMARY KEY CLUSTERED ([fldTemplateID] ASC)
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblTemplate_FldTemplateOldID]
    ON [dbo].[tblTemplate]([fldTemplateID] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'relates to tblSeries identifying underwriting type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTemplate', @level2type = N'COLUMN', @level2name = N'fldTemplateInsurance';


GO

