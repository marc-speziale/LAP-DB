CREATE TABLE [newlap].[auth_tokens] (
    [dealership_id] BIGINT         NOT NULL,
    [token]         NVARCHAR (191) NOT NULL,
    [created_at]    DATETIME       DEFAULT (getdate()) NOT NULL,
    [expires_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [auth_tokens$auth_tokens_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [auth_tokens_dealership_id_foreign]
    ON [newlap].[auth_tokens]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.auth_tokens', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'auth_tokens';


GO

