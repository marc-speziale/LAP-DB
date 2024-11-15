CREATE TABLE [newlap].[training_quiz_questions] (
    [id]       BIGINT         IDENTITY (10, 1) NOT NULL,
    [quiz_id]  BIGINT         NOT NULL,
    [question] NVARCHAR (MAX) NOT NULL,
    [detail]   NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_training_quiz_questions_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [training_quiz_questions$training_quiz_questions_quiz_id_foreign] FOREIGN KEY ([quiz_id]) REFERENCES [newlap].[training_quizzes] ([id])
);


GO

CREATE NONCLUSTERED INDEX [training_quiz_questions_quiz_id_foreign]
    ON [newlap].[training_quiz_questions]([quiz_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.training_quiz_questions', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'training_quiz_questions';


GO

