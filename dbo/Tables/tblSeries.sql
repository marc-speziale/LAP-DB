CREATE TABLE [dbo].[tblSeries] (
    [fldSeriesID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldSeriesName]        NVARCHAR (50)  NOT NULL,
    [fldSeriesCode]        NCHAR (10)     NOT NULL,
    [fldSeriesDescription] NVARCHAR (MAX) NOT NULL,
    [fldSeriesActive]      BIT            CONSTRAINT [DF_tblSeries_fldSeriesActive] DEFAULT ((1)) NOT NULL,
    [fldSeriesDate]        DATETIME       NOT NULL,
    CONSTRAINT [PK_tblSeries] PRIMARY KEY CLUSTERED ([fldSeriesID] ASC)
);


GO

