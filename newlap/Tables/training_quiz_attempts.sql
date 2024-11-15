CREATE TABLE [newlap].[training_quiz_attempts] (
    [id]           BIGINT         IDENTITY (1222, 1) NOT NULL,
    [user_id]      BIGINT         NOT NULL,
    [user_type]    NVARCHAR (191) NOT NULL,
    [quiz_id]      BIGINT         NOT NULL,
    [started_at]   DATETIME       DEFAULT (NULL) NULL,
    [completed_at] DATETIME       DEFAULT (NULL) NULL,
    [score]        BIGINT         DEFAULT (NULL) NULL,
    [created_at]   DATETIME       DEFAULT (NULL) NULL,
    [updated_at]   DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_training_quiz_attempts_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.training_quiz_attempts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'training_quiz_attempts';


GO

