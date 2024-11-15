CREATE TABLE [dbo].[tblCommissionAmountType] (
    [fldCommissionAmountTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldCommissionAmountTypeName]        NVARCHAR (MAX) NULL,
    [fldCommissionAmountTypeDescription] INT            NOT NULL,
    [fldCommissionAmountTypeActive]      INT            NULL,
    CONSTRAINT [PK_tblCommissionAmountType] PRIMARY KEY CLUSTERED ([fldCommissionAmountTypeID] ASC)
);


GO

