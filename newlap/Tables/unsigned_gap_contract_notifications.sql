CREATE TABLE [newlap].[unsigned_gap_contract_notifications] (
    [id]            BIGINT         IDENTITY (36, 1) NOT NULL,
    [dealership_id] BIGINT         NOT NULL,
    [month]         NVARCHAR (191) NOT NULL,
    [year]          INT            NOT NULL,
    [to]            NVARCHAR (191) NOT NULL,
    [content]       NVARCHAR (MAX) NOT NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_unsigned_gap_contract_notifications_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [unsigned_gap_contract_notifications$unsigned_gap_contract_notifications_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [unsigned_gap_contract_notifications_dealership_id_foreign]
    ON [newlap].[unsigned_gap_contract_notifications]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.unsigned_gap_contract_notifications', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'unsigned_gap_contract_notifications';


GO

