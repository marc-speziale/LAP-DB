CREATE TABLE [newlap].[training_quizzes] (
    [id]   BIGINT         IDENTITY (2, 1) NOT NULL,
    [name] NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_training_quizzes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.training_quizzes', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'training_quizzes';


GO

