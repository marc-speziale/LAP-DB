CREATE TABLE [newlap].[master_admins] (
    [id]             BIGINT         IDENTITY (24, 1) NOT NULL,
    [first_name]     NVARCHAR (191) NOT NULL,
    [last_name]      NVARCHAR (191) NOT NULL,
    [email]          NVARCHAR (191) NOT NULL,
    [password]       NVARCHAR (191) NOT NULL,
    [remember_token] NVARCHAR (100) DEFAULT (NULL) NULL,
    [created_at]     DATETIME       DEFAULT (NULL) NULL,
    [updated_at]     DATETIME       DEFAULT (NULL) NULL,
    [deleted_at]     DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_master_admins_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [master_admins$master_admins_email_unique] UNIQUE NONCLUSTERED ([email] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.master_admins', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'master_admins';


GO

