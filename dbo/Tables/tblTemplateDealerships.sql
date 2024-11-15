CREATE TABLE [dbo].[tblTemplateDealerships] (
    [fldTemplateDealershipsID]            INT                                         IDENTITY (1, 1) NOT NULL,
    [fldTemplateDealershipsTemplateID]    INT                                         NOT NULL,
    [fldTemplateDealershipsDealerID]      INT                                         NOT NULL,
    [fldTemplateDealershipsTemplateOldID] INT                                         CONSTRAINT [DF_tblTemplateDealerships_fldTemplateDealershipsTemplateOldID] DEFAULT ((0)) NOT NULL,
    [ValidFrom]                           DATETIME2 (7) GENERATED ALWAYS AS ROW START DEFAULT (sysutcdatetime()) NOT NULL,
    [ValidTo]                             DATETIME2 (7) GENERATED ALWAYS AS ROW END   DEFAULT (CONVERT([datetime2],'9999-12-31 23:59:59.9999999')) NOT NULL,
    [fldTemplateDealerShipsMarkup]        DECIMAL (18, 2)                             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblTemplateDealerships] PRIMARY KEY CLUSTERED ([fldTemplateDealershipsID] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[tblTemplateDealershipsHistory], DATA_CONSISTENCY_CHECK=ON));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This relates to the tblTemplate.fldTemplateOldID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTemplateDealerships', @level2type = N'COLUMN', @level2name = N'fldTemplateDealershipsTemplateID';


GO

