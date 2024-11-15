CREATE TABLE [newlap].[arch_syndicate_dealerships] (
    [id]             BIGINT         IDENTITY (52, 1) NOT NULL,
    [dealership_id]  BIGINT         NOT NULL,
    [start_date]     DATE           NOT NULL,
    [end_date]       DATE           NOT NULL,
    [excluded_types] NVARCHAR (MAX) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_arch_syndicate_dealerships_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [arch_syndicate_dealerships$arch_syndicate_dealerships_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [arch_syndicate_dealerships_dealership_id_foreign]
    ON [newlap].[arch_syndicate_dealerships]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.arch_syndicate_dealerships', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'arch_syndicate_dealerships';


GO

