CREATE TABLE [newlap].[system_settings] (
    [gap_contracts_enabled] SMALLINT DEFAULT ((0)) NOT NULL
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.system_settings', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'system_settings';


GO

