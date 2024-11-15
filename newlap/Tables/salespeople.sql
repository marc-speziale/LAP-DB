CREATE TABLE [newlap].[salespeople] (
    [id]             BIGINT         IDENTITY (2095, 1) NOT NULL,
    [dealership_id]  BIGINT         NOT NULL,
    [first_name]     NVARCHAR (191) NOT NULL,
    [last_name]      NVARCHAR (191) NOT NULL,
    [email]          NVARCHAR (191) NOT NULL,
    [password]       NVARCHAR (191) NOT NULL,
    [account_status] NVARCHAR (8)   DEFAULT (N'Active') NOT NULL,
    [remember_token] NVARCHAR (100) DEFAULT (NULL) NULL,
    [deleted_at]     DATETIME       DEFAULT (NULL) NULL,
    [created_at]     DATETIME       DEFAULT (NULL) NULL,
    [updated_at]     DATETIME       DEFAULT (NULL) NULL,
    [gap_disabled]   SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_salespeople_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [salespeople$salespeople_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [salespeople$salespeople_email_unique] UNIQUE NONCLUSTERED ([email] ASC)
);


GO

CREATE NONCLUSTERED INDEX [salespeople_dealership_id_foreign]
    ON [newlap].[salespeople]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.salespeople', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'salespeople';


GO

