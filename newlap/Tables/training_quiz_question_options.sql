CREATE TABLE [newlap].[training_quiz_question_options] (
    [id]             BIGINT         IDENTITY (39, 1) NOT NULL,
    [question_id]    BIGINT         NOT NULL,
    [option]         NVARCHAR (MAX) NOT NULL,
    [correct_option] SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_training_quiz_question_options_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [training_quiz_question_options$training_quiz_question_options_question_id_foreign] FOREIGN KEY ([question_id]) REFERENCES [newlap].[training_quiz_questions] ([id])
);


GO

CREATE NONCLUSTERED INDEX [training_quiz_question_options_question_id_foreign]
    ON [newlap].[training_quiz_question_options]([question_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.training_quiz_question_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'training_quiz_question_options';


GO

