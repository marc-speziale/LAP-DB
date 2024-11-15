CREATE TABLE [newlap].[contact_submissions] (
    [id]              BIGINT         IDENTITY (1007, 1) NOT NULL,
    [name]            NVARCHAR (191) NOT NULL,
    [email]           NVARCHAR (191) NOT NULL,
    [contract_number] NVARCHAR (191) DEFAULT (NULL) NULL,
    [comments]        NVARCHAR (MAX) NOT NULL,
    [created_at]      DATETIME       DEFAULT (NULL) NULL,
    [updated_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_contact_submissions_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.contact_submissions', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'contact_submissions';


GO

