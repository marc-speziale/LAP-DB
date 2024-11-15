CREATE TABLE [dbo].[tblLenderDealers] (
    [fldLenderDealersID]       INT IDENTITY (1, 1) NOT NULL,
    [fldLenderDealersDealerID] INT NOT NULL,
    [fldLenderDealersLenderID] INT NOT NULL,
    CONSTRAINT [PK_tblLenderDealers] PRIMARY KEY CLUSTERED ([fldLenderDealersID] ASC)
);


GO

