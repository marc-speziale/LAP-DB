CREATE TABLE [dbo].[tblContractDocument] (
    [fldContractDocumentID]         INT              IDENTITY (1, 1) NOT NULL,
    [fldContractDocumentName]       NVARCHAR (100)   NOT NULL,
    [fldContractDocumentUID]        UNIQUEIDENTIFIER NOT NULL,
    [fldContractDocumentContractID] INT              NOT NULL,
    [fldContractDocumentUploadDate] DATETIME         NOT NULL,
    PRIMARY KEY CLUSTERED ([fldContractDocumentID] ASC)
);


GO

