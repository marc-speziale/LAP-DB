CREATE TABLE [postgres].[dealership_users] (
    [dealership_id] BIGINT        NOT NULL,
    [user_id]       BIGINT        NOT NULL,
    [created_at]    DATETIME      NOT NULL,
    [role]          VARCHAR (255) NULL
);


GO

