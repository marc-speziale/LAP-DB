CREATE TABLE [newlap].[dealership_training_quizzes] (
    [id]            BIGINT   IDENTITY (283, 1) NOT NULL,
    [dealership_id] BIGINT   NOT NULL,
    [quiz_id]       BIGINT   NOT NULL,
    [created_at]    DATETIME DEFAULT (NULL) NULL,
    [updated_at]    DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_dealership_training_quizzes_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [dealership_training_quizzes$dealership_training_quizzes_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id]),
    CONSTRAINT [dealership_training_quizzes$dealership_training_quizzes_quiz_id_foreign] FOREIGN KEY ([quiz_id]) REFERENCES [newlap].[training_quizzes] ([id])
);


GO

CREATE NONCLUSTERED INDEX [dealership_training_quizzes_quiz_id_foreign]
    ON [newlap].[dealership_training_quizzes]([quiz_id] ASC);


GO

CREATE NONCLUSTERED INDEX [dealership_training_quizzes_dealership_id_foreign]
    ON [newlap].[dealership_training_quizzes]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealership_training_quizzes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealership_training_quizzes';


GO

