CREATE TABLE [dbo].[tblPaymentFrequency] (
    [fldPaymentFrequencyID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldPaymentFrequencyName]        NVARCHAR (50)  NULL,
    [fldPaymentFrequencyDescription] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblPaymentFrequency] PRIMARY KEY CLUSTERED ([fldPaymentFrequencyID] ASC)
);


GO

