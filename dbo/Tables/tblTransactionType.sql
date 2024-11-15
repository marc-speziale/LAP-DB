CREATE TABLE [dbo].[tblTransactionType] (
    [fldTransactionTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldTransactionTypeName]        NVARCHAR (50)  NOT NULL,
    [fldTransactionTypeDescription] NVARCHAR (MAX) NULL,
    [fldTransactionTypeDefault]     BIT            NULL,
    CONSTRAINT [PK_tblTransactionType] PRIMARY KEY CLUSTERED ([fldTransactionTypeID] ASC)
);


GO

