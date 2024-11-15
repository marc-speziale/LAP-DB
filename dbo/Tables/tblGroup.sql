CREATE TABLE [dbo].[tblGroup] (
    [fldGroupID]              INT            IDENTITY (1, 1) NOT NULL,
    [fldGroupName]            NVARCHAR (MAX) NOT NULL,
    [fldGroupActive]          BIT            CONSTRAINT [DF_tblGroup_fldGroupActive] DEFAULT ((1)) NOT NULL,
    [fldGroupDealerAvailable] BIT            CONSTRAINT [DF_tblGroup_fldGroupDealer] DEFAULT ((0)) NOT NULL,
    [fldGroupDealerID]        INT            NULL,
    CONSTRAINT [PK_tblGroup] PRIMARY KEY CLUSTERED ([fldGroupID] ASC)
);


GO

