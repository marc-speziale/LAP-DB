CREATE TABLE [newlap].[user_ability] (
    [user_id]    BIGINT         NOT NULL,
    [user_type]  NVARCHAR (191) NOT NULL,
    [ability_id] BIGINT         NOT NULL,
    CONSTRAINT [user_ability$user_ability_ability_id_foreign] FOREIGN KEY ([ability_id]) REFERENCES [newlap].[abilities] ([id])
);


GO

CREATE NONCLUSTERED INDEX [user_ability_ability_id_foreign]
    ON [newlap].[user_ability]([ability_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.user_ability', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'user_ability';


GO

