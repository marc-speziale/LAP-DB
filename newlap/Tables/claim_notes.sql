CREATE TABLE [newlap].[claim_notes] (
    [id]         BIGINT         IDENTITY (37341, 1) NOT NULL,
    [claim_id]   BIGINT         NOT NULL,
    [note]       NVARCHAR (MAX) NOT NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    [deleted_at] DATETIME       DEFAULT (NULL) NULL,
    [deleted_by] BIGINT         DEFAULT (NULL) NULL,
    CONSTRAINT [PK_claim_notes_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [claim_notes$claim_notes_claim_id_foreign] FOREIGN KEY ([claim_id]) REFERENCES [newlap].[claims] ([id])
);


GO

CREATE NONCLUSTERED INDEX [claim_notes_claim_id_foreign]
    ON [newlap].[claim_notes]([claim_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.claim_notes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'claim_notes';


GO

