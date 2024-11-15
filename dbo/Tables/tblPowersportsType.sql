CREATE TABLE [dbo].[tblPowersportsType] (
    [fldPowersportsTypeID]        INT           IDENTITY (1, 1) NOT NULL,
    [fldPowersportsType]          NVARCHAR (50) NOT NULL,
    [fldPowersportsTypeProductID] INT           CONSTRAINT [DF_tblPowersportsType_fldPowersportsTypeProductID] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblPowersportsType] PRIMARY KEY CLUSTERED ([fldPowersportsTypeID] ASC)
);


GO

