CREATE TABLE [newlap].[powersports_options] (
    [id]          BIGINT         IDENTITY (3, 1) NOT NULL,
    [name]        NVARCHAR (100) NOT NULL,
    [sku]         NVARCHAR (20)  NOT NULL,
    [dealer_cost] INT            NOT NULL,
    [price]       INT            NOT NULL,
    [term_months] NVARCHAR (2)   NOT NULL,
    [deleted_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_powersports_options_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_options', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'powersports_options';


GO

