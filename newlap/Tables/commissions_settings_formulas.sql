CREATE TABLE [newlap].[commissions_settings_formulas] (
    [id]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [type]    NVARCHAR (11)  NOT NULL,
    [formula] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_commissions_settings_formulas_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.commissions_settings_formulas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'commissions_settings_formulas';


GO

