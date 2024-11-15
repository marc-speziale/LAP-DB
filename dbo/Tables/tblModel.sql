CREATE TABLE [dbo].[tblModel] (
    [fldModelID]             INT           IDENTITY (1, 1) NOT NULL,
    [fldModelManufacturerID] INT           NOT NULL,
    [fldModelModel]          NVARCHAR (50) NULL,
    [fldModelClass]          INT           NOT NULL,
    [fldModelCNAvailable]    BIT           NULL,
    [fldModelCNLuxury]       BIT           NULL,
    [fldModelProductID]      INT           NOT NULL,
    CONSTRAINT [PK_tblModel] PRIMARY KEY CLUSTERED ([fldModelID] ASC)
);


GO

CREATE NONCLUSTERED INDEX [IX_tblModel]
    ON [dbo].[tblModel]([fldModelModel] ASC);


GO

