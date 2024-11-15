CREATE TABLE [dbo].[tblClaimStatus] (
    [fldClaimstatusID]     INT            IDENTITY (1, 1) NOT NULL,
    [fldClaimStatusName]   NVARCHAR (MAX) NULL,
    [fldClaimStatusActive] BIT            CONSTRAINT [DF_tblClaimStatus_fldClaimStatusActive] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_tblClaimStatus] PRIMARY KEY CLUSTERED ([fldClaimstatusID] ASC)
);


GO

