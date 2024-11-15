CREATE TABLE [dbo].[tblBenefitComponent] (
    [fldBenefitComponentsID]         INT            IDENTITY (1, 1) NOT NULL,
    [fldBenefitComponentDescription] NVARCHAR (MAX) NOT NULL,
    [fldBenefitComponentBenefitID]   INT            NOT NULL,
    [fldBenefitComponentNotes]       NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_tblBenefitComponent] PRIMARY KEY CLUSTERED ([fldBenefitComponentsID] ASC)
);


GO

