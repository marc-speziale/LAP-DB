CREATE TABLE [dbo].[tblTransaction] (
    [fldTransactionID]                   INT             IDENTITY (1, 1) NOT NULL,
    [fldTransactionAmount]               DECIMAL (18, 2) NOT NULL,
    [fldTransactionTransactionTableType] INT             NOT NULL,
    [fldTransactionDate]                 DATETIME        NOT NULL,
    [fldTransactionUserID]               INT             NOT NULL,
    [fldTransactionContractID]           INT             CONSTRAINT [DF_tblTransaction_fldTransactionContractID] DEFAULT ((0)) NOT NULL,
    [fldTransactionNote]                 NVARCHAR (MAX)  NULL,
    [fldTransactionClaimID]              INT             CONSTRAINT [DF_tblTransaction_fldTransactionClaimID] DEFAULT ((0)) NOT NULL,
    [fldTransactionPST]                  DECIMAL (18, 2) CONSTRAINT [DF_tblTransaction_fldTransactionPST] DEFAULT ((0)) NOT NULL,
    [fldTransactionHST]                  DECIMAL (18, 2) CONSTRAINT [DF_tblTransaction_fldTransactionHST] DEFAULT ((0)) NOT NULL,
    [fldTransactionUnderwriter]          BIT             CONSTRAINT [DF_tblTransaction_fldTransactionUnderwriter] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblTransaction] PRIMARY KEY CLUSTERED ([fldTransactionID] ASC)
);


GO

