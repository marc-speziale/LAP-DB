CREATE TABLE [newlap].[gap_options_cgw] (
    [id]               BIGINT         IDENTITY (7, 1) NOT NULL,
    [name]             NVARCHAR (100) NOT NULL,
    [sku]              NVARCHAR (20)  NOT NULL,
    [price]            INT            DEFAULT (NULL) NULL,
    [dealer_cost]      INT            DEFAULT (NULL) NULL,
    [deleted_at]       DATETIME       DEFAULT (NULL) NULL,
    [max_down_payment] DECIMAL (8, 2) DEFAULT (NULL) NULL,
    [min_down_payment] DECIMAL (8, 2) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_gap_options_cgw_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_options_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'gap_options_cgw';


GO

