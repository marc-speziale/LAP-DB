CREATE TABLE [dbo].[tblDealerStatus] (
    [fldDealerStatusID] INT           IDENTITY (1, 1) NOT NULL,
    [fldDealerStatus]   NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tblDealerStatus] PRIMARY KEY CLUSTERED ([fldDealerStatusID] ASC)
);


GO

