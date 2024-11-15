CREATE TABLE [dbo].[tblProspect] (
    [fldProspectID]           INT           IDENTITY (1, 1) NOT NULL,
    [fldProspectName]         NVARCHAR (50) NULL,
    [fldProspectFirstContact] DATETIME      NULL,
    [fldProspectRepID]        INT           NULL,
    [fldProspectCreatedBy]    INT           NULL,
    [fldProspectAcquired]     BIT           NULL,
    [fldProspectCreatedDate]  DATETIME      NULL,
    CONSTRAINT [PK_tblProspect] PRIMARY KEY CLUSTERED ([fldProspectID] ASC)
);


GO

