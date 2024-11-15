CREATE TABLE [dbo].[tblTransactionTableType] (
    [fldTransactionTableTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldTransactionTableType]            NVARCHAR (50)  NOT NULL,
    [fldTransactionTableTypeDescription] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_tblTransactionTableType] PRIMARY KEY CLUSTERED ([fldTransactionTableTypeID] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lists the types of transactions for the tblTransaction ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblTransactionTableType', @level2type = N'COLUMN', @level2name = N'fldTransactionTableTypeID';


GO

