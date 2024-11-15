CREATE TABLE [dbo].[tblUnderwriterType] (
    [fldUnderwriterTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldUnderwriterTypeName]        NVARCHAR (50)  NULL,
    [fldUnderwriterTypeDescription] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblUnderwriterType] PRIMARY KEY CLUSTERED ([fldUnderwriterTypeID] ASC)
);


GO

