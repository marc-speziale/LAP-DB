CREATE TABLE [newlap].[sales_projection_groups] (
    [id]   BIGINT         IDENTITY (6, 1) NOT NULL,
    [name] NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_sales_projection_groups_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [sales_projection_groups$sales_projection_groups_name_unique] UNIQUE NONCLUSTERED ([name] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.sales_projection_groups', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'sales_projection_groups';


GO

