CREATE TABLE [dbo].[tblTemplateDealershipsHistory] (
    [fldTemplateDealershipsID]            INT             NOT NULL,
    [fldTemplateDealershipsTemplateID]    INT             NOT NULL,
    [fldTemplateDealershipsDealerID]      INT             NOT NULL,
    [fldTemplateDealershipsTemplateOldID] INT             NOT NULL,
    [ValidFrom]                           DATETIME2 (7)   NOT NULL,
    [ValidTo]                             DATETIME2 (7)   NOT NULL,
    [fldTemplateDealerShipsMarkup]        DECIMAL (18, 2) NOT NULL
);


GO

CREATE CLUSTERED INDEX [ix_tblTemplateDealershipsHistory]
    ON [dbo].[tblTemplateDealershipsHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);


GO

