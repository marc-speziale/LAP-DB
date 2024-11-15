CREATE TABLE [newlap].[dealer_admins] (
    [id]             BIGINT         IDENTITY (338, 1) NOT NULL,
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
    CONSTRAINT [PK_dealer_admins_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [dealer_admins$dealer_admins_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [dealer_admins$dealer_admins_email_unique] UNIQUE NONCLUSTERED ([email] ASC)
);


GO

CREATE NONCLUSTERED INDEX [dealer_admins_dealership_id_foreign]
    ON [newlap].[dealer_admins]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealer_admins', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealer_admins';


GO

