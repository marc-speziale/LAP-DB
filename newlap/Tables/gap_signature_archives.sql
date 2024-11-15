CREATE TABLE [newlap].[gap_signature_archives] (
    [id]         BIGINT         IDENTITY (18, 1) NOT NULL,
    [month]      INT            NOT NULL,
    [year]       INT            NOT NULL,
    [filename]   NVARCHAR (191) NOT NULL,
    [sent_at]    DATETIME       DEFAULT (NULL) NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_gap_signature_archives_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [gap_signature_archives$gap_signature_archives_month_year_unique] UNIQUE NONCLUSTERED ([month] ASC, [year] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_signature_archives', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'gap_signature_archives';


GO

