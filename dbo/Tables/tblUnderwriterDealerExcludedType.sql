CREATE TABLE [dbo].[tblUnderwriterDealerExcludedType] (
    [fldUnderwriterDealerExcludedTypeID]                  INT IDENTITY (1, 1) NOT NULL,
    [fldUnderwriterDealerExcludedTypeUnderwriterDealerID] INT NULL,
    [fldUnderwriterDealerExcludedTypeTermID]              INT NULL,
    CONSTRAINT [PK_tblUnderwriterDealerExcludedType] PRIMARY KEY CLUSTERED ([fldUnderwriterDealerExcludedTypeID] ASC)
);


GO

