CREATE TABLE [postgres].[users] (
    [id]                          INT            NOT NULL,
    [first_name]                  VARCHAR (32)   NULL,
    [last_name]                   VARCHAR (32)   NULL,
    [username]                    VARCHAR (64)   NULL,
    [email]                       VARCHAR (64)   NULL,
    [location]                    NVARCHAR (255) NULL,
    [phone]                       VARCHAR (16)   NULL,
    [password]                    VARCHAR (255)  NULL,
    [last_active]                 DATETIME       NULL,
    [is_active]                   BIT            NOT NULL,
    [preferences]                 NVARCHAR (MAX) NULL,
    [note]                        TEXT           NULL,
    [last_application_created_at] DATETIME       NULL,
    [remember_token]              VARCHAR (100)  NULL,
    [created_at]                  DATETIME       NULL,
    [updated_at]                  DATETIME       NULL,
    [deleted_at]                  DATETIME       NULL,
    [license_number]              TEXT           NULL,
    [accesses]                    NVARCHAR (255) NULL
);


GO

