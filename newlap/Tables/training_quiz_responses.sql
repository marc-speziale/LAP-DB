CREATE TABLE [newlap].[training_quiz_responses] (
    [id]               BIGINT   IDENTITY (4982, 1) NOT NULL,
    [quiz_attempt_id]  BIGINT   NOT NULL,
    [quiz_question_id] BIGINT   NOT NULL,
    [quiz_response_id] BIGINT   NOT NULL,
    [created_at]       DATETIME DEFAULT (NULL) NULL,
    [updated_at]       DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_training_quiz_responses_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.training_quiz_responses', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'training_quiz_responses';


GO

