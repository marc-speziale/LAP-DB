CREATE TABLE [dbo].[tblContractCostType] (
    [fldContractCostTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldContractCostTypeName]        NVARCHAR (50)  NULL,
    [fldContractCostTypeActive]      BIT            NULL,
    [fldContractCostTypeDescription] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblContractCostType] PRIMARY KEY CLUSTERED ([fldContractCostTypeID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Describes cost type.  base cost, option, surcharge etc', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblContractCostType', @level2type = N'COLUMN', @level2name = N'fldContractCostTypeDescription';


GO

