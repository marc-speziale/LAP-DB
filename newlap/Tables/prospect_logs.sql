CREATE TABLE [newlap].[prospect_logs] (
    [id]                 BIGINT         IDENTITY (966, 1) NOT NULL,
    [dealership_name]    NVARCHAR (191) NOT NULL,
    [first_contact_date] DATE           NOT NULL,
    [rep_name]           NVARCHAR (191) DEFAULT (NULL) NULL,
    [creator_id]         BIGINT         NOT NULL,
    [creator_type]       NVARCHAR (191) NOT NULL,
    [acquired]           SMALLINT       DEFAULT ((0)) NOT NULL,
    [created_at]         DATETIME       DEFAULT (NULL) NULL,
    [updated_at]         DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_prospect_logs_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.prospect_logs', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'prospect_logs';


GO

