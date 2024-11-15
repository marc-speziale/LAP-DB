CREATE TABLE [newlap].[remote_users] (
    [id]             BIGINT         IDENTITY (4, 1) NOT NULL,
    [first_name]     NVARCHAR (191) NOT NULL,
    [last_name]      NVARCHAR (191) NOT NULL,
    [email]          NVARCHAR (191) NOT NULL,
    [password]       NVARCHAR (191) NOT NULL,
    [remember_token] NVARCHAR (100) DEFAULT (NULL) NULL,
    [created_at]     DATETIME       DEFAULT (NULL) NULL,
    [updated_at]     DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_remote_users_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [remote_users$remote_users_email_unique] UNIQUE NONCLUSTERED ([email] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.remote_users', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'remote_users';


GO

