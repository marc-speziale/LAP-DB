CREATE TABLE [dbo].[tblDealerProduct] (
    [fldDealerProductID]        INT IDENTITY (1, 1) NOT NULL,
    [fldDealerProductDealerID]  INT NOT NULL,
    [fldDealerProductProductID] INT NOT NULL,
    CONSTRAINT [PK_tblDealerProduct] PRIMARY KEY CLUSTERED ([fldDealerProductID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Composite key to ensure a record for a dealer product is unique', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblDealerProduct', @level2type = N'INDEX', @level2name = N'IX_tblDealerProduct_DealerID_ProductID';


GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tblDealerProduct_DealerID_ProductID]
    ON [dbo].[tblDealerProduct]([fldDealerProductDealerID] ASC, [fldDealerProductProductID] ASC);


GO

