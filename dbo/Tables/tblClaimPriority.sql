CREATE TABLE [dbo].[tblClaimPriority] (
    [fldClaimPriorityID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldClaimPriorityName]        NVARCHAR (100) NOT NULL,
    [fldClaimPriorityDescription] NVARCHAR (500) NOT NULL,
    [fldClaimPriorityColour]      NVARCHAR (50)  NOT NULL
);


GO

