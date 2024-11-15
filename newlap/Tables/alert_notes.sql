CREATE TABLE [newlap].[alert_notes] (
    [id]            BIGINT         IDENTITY (371, 1) NOT NULL,
    [contract_id]   BIGINT         NOT NULL,
    [contract_type] NVARCHAR (191) NOT NULL,
    [note]          NVARCHAR (MAX) NOT NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_alert_notes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.alert_notes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'alert_notes';


GO

