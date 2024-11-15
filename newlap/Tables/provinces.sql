CREATE TABLE [newlap].[provinces] (
    [id]               BIGINT         IDENTITY (14, 1) NOT NULL,
    [name]             NVARCHAR (191) NOT NULL,
    [code]             NVARCHAR (191) NOT NULL,
    [tax_rate]         NUMERIC (8, 2) DEFAULT (NULL) NULL,
    [gap_type]         NVARCHAR (3)   DEFAULT (NULL) NULL,
    [warranty_type]    NVARCHAR (9)   DEFAULT (NULL) NULL,
    [ppt_rate]         NUMERIC (8, 3) DEFAULT (NULL) NULL,
    [powersports_type] NVARCHAR (9)   DEFAULT (NULL) NULL,
    [rv_trailer_type]  NVARCHAR (9)   DEFAULT (NULL) NULL,
    CONSTRAINT [PK_provinces_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.provinces', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'provinces';


GO

