CREATE TABLE [postgres].[password_reset_tokens] (
    [email]      VARCHAR (255) NULL,
    [token]      VARCHAR (255) NULL,
    [created_at] DATETIME      NULL
);


GO

