CREATE TABLE [dbo].[tblContractStatus] (
    [fldContractStatusID]     INT           IDENTITY (1, 1) NOT NULL,
    [fldContractStatusName]   NVARCHAR (50) NULL,
    [fldContractStatusActive] BIT           NULL,
    CONSTRAINT [PK_tblContractStatus] PRIMARY KEY CLUSTERED ([fldContractStatusID] ASC)
);


GO

