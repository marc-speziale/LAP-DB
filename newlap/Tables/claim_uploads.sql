CREATE TABLE [newlap].[claim_uploads] (
    [id]          BIGINT         IDENTITY (6126, 1) NOT NULL,
    [claim_id]    BIGINT         NOT NULL,
    [filename]    NVARCHAR (191) NOT NULL,
    [description] NVARCHAR (MAX) NULL,
    [created_at]  DATETIME       DEFAULT (NULL) NULL,
    [updated_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_claim_uploads_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [claim_uploads$claim_uploads_claim_id_foreign] FOREIGN KEY ([claim_id]) REFERENCES [newlap].[claims] ([id])
);


GO

CREATE NONCLUSTERED INDEX [claim_uploads_claim_id_foreign]
    ON [newlap].[claim_uploads]([claim_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.claim_uploads', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'claim_uploads';


GO

