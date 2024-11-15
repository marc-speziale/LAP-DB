CREATE TABLE [dbo].[tblClaim] (
    [fldClaimID]                  INT           IDENTITY (1, 1) NOT NULL,
    [fldClaimAuthorizationNumber] NVARCHAR (50) NULL,
    [fldClaimMileage]             INT           CONSTRAINT [DF_tblClaim_fldClaimMileage] DEFAULT ((0)) NULL,
    [fldClaimOpenedDate]          DATETIME      NOT NULL,
    [fldClaimAssignedTo]          INT           CONSTRAINT [DF_tblClaim_fldClaimAssignedTo] DEFAULT ((0)) NULL,
    [fldClaimContractID]          INT           CONSTRAINT [DF_tblClaim_fldClaimContractID] DEFAULT ((0)) NOT NULL,
    [fldClaimStatusID]            INT           CONSTRAINT [DF_tblClaim_fldClaimStatusID] DEFAULT ((1)) NOT NULL,
    [fldClaimClosedDate]          DATETIME      NULL,
    [fldClaimCreatedDate]         DATETIME      NULL,
    [fldClaimApprovedDate]        DATETIME      NULL,
    [fldClaimApprovedBy]          INT           CONSTRAINT [DF_tblClaim_fldClaimApprovedBy] DEFAULT ((0)) NULL,
    [fldClaimServiceID]           INT           CONSTRAINT [DF_tblClaim_fldClaimServiceID] DEFAULT ((0)) NULL,
    [fldClaimPriorityID]          INT           NULL,
    CONSTRAINT [PK_tblClaim] PRIMARY KEY CLUSTERED ([fldClaimID] ASC)
);


GO

