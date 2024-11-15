CREATE TABLE [newlap].[prospect_log_notes] (
    [id]              BIGINT         IDENTITY (76, 1) NOT NULL,
    [prospect_log_id] BIGINT         NOT NULL,
    [note]            NVARCHAR (MAX) NOT NULL,
    [created_at]      DATETIME       DEFAULT (NULL) NULL,
    [updated_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_prospect_log_notes_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [prospect_log_notes$prospect_log_notes_prospect_log_id_foreign] FOREIGN KEY ([prospect_log_id]) REFERENCES [newlap].[prospect_logs] ([id])
);


GO

CREATE NONCLUSTERED INDEX [prospect_log_notes_prospect_log_id_foreign]
    ON [newlap].[prospect_log_notes]([prospect_log_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.prospect_log_notes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'prospect_log_notes';


GO

