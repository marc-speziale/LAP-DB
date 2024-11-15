CREATE TABLE [newlap].[sales_projection_months] (
    [id]    BIGINT IDENTITY (35, 1) NOT NULL,
    [month] BIGINT NOT NULL,
    [year]  BIGINT NOT NULL,
    CONSTRAINT [PK_sales_projection_months_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.sales_projection_months', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'sales_projection_months';


GO

