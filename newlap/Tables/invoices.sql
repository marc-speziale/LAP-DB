CREATE TABLE [newlap].[invoices] (
    [id]            BIGINT         IDENTITY (4340, 1) NOT NULL,
    [dealership_id] BIGINT         NOT NULL,
    [from]          DATE           NOT NULL,
    [to]            DATE           NOT NULL,
    [filename]      NVARCHAR (191) NOT NULL,
    [emailed_at]    DATETIME       DEFAULT (NULL) NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_invoices_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [invoices$invoices_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [invoices_dealership_id_foreign]
    ON [newlap].[invoices]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.invoices', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'invoices';


GO

