CREATE TABLE [newlap].[claim_checklist_items] (
    [id]   BIGINT         IDENTITY (17, 1) NOT NULL,
    [type] NVARCHAR (191) NOT NULL,
    [name] NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_claim_checklist_items_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.claim_checklist_items', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'claim_checklist_items';


GO

