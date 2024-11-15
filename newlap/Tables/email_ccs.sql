CREATE TABLE [newlap].[email_ccs] (
    [id]            BIGINT         IDENTITY (142, 1) NOT NULL,
    [dealership_id] BIGINT         NOT NULL,
    [email]         NVARCHAR (191) NOT NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_email_ccs_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [email_ccs$email_ccs_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [email_ccs_dealership_id_foreign]
    ON [newlap].[email_ccs]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.email_ccs', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'email_ccs';


GO

