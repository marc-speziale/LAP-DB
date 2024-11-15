CREATE TABLE [dbo].[tblUnderwriterDealer] (
    [fldUnderwriterDealerID]            INT      IDENTITY (1, 1) NOT NULL,
    [fldUnderwriterDealerUnderwriterID] INT      NULL,
    [fldUnderwriterDealerDealerID]      INT      NULL,
    [fldUnderwriterDealerStartDate]     DATETIME NULL,
    [fldUnderwriterDealerEndDate]       DATETIME NULL,
    CONSTRAINT [PK_tblUnderwriterDealer] PRIMARY KEY CLUSTERED ([fldUnderwriterDealerID] ASC)
);


GO

