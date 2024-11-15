CREATE TABLE [newlap].[multi_dealer_admins] (
    [id]             BIGINT         IDENTITY (50, 1) NOT NULL,
    [first_name]     NVARCHAR (191) NOT NULL,
    [last_name]      NVARCHAR (191) NOT NULL,
    [email]          NVARCHAR (191) NOT NULL,
    [password]       NVARCHAR (191) NOT NULL,
    [remember_token] NVARCHAR (100) DEFAULT (NULL) NULL,
    [created_at]     DATETIME       DEFAULT (NULL) NULL,
    [updated_at]     DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_multi_dealer_admins_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [multi_dealer_admins$multi_dealer_admins_email_unique] UNIQUE NONCLUSTERED ([email] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.multi_dealer_admins', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'multi_dealer_admins';


GO

