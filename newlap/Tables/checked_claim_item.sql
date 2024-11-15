CREATE TABLE [newlap].[checked_claim_item] (
    [id]                BIGINT   IDENTITY (420, 1) NOT NULL,
    [claim_id]          BIGINT   NOT NULL,
    [checklist_item_id] BIGINT   NOT NULL,
    [created_at]        DATETIME DEFAULT (NULL) NULL,
    [updated_at]        DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_checked_claim_item_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [checked_claim_item$checked_claim_item_checklist_item_id_foreign] FOREIGN KEY ([checklist_item_id]) REFERENCES [newlap].[claim_checklist_items] ([id]),
    CONSTRAINT [checked_claim_item$checked_claim_item_claim_id_foreign] FOREIGN KEY ([claim_id]) REFERENCES [newlap].[claims] ([id])
);


GO

CREATE NONCLUSTERED INDEX [checked_claim_item_claim_id_foreign]
    ON [newlap].[checked_claim_item]([claim_id] ASC);


GO

CREATE NONCLUSTERED INDEX [checked_claim_item_checklist_item_id_foreign]
    ON [newlap].[checked_claim_item]([checklist_item_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.checked_claim_item', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'checked_claim_item';


GO

