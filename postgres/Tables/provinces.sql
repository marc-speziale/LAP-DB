CREATE TABLE [postgres].[provinces] (
    [id]           INT             NOT NULL,
    [name]         TEXT            NOT NULL,
    [code]         VARCHAR (2)     NULL,
    [tax_rate]     NUMERIC (13, 2) NULL,
    [created_at]   DATETIME        NULL,
    [updated_at]   DATETIME        NULL,
    [gap_tax_rate] NUMERIC (13, 2) NULL,
    [pst_rate]     NUMERIC (13, 2) NULL,
    [gst_rate]     NUMERIC (13, 2) NULL,
    [hst_rate]     NUMERIC (13, 2) NULL,
    [pst_gap_rate] NUMERIC (13, 2) NULL,
    [gst_gap_rate] NUMERIC (13, 2) NULL,
    [hst_gap_rate] NUMERIC (13, 2) NULL
);


GO

