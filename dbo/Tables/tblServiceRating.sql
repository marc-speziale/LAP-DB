CREATE TABLE [dbo].[tblServiceRating] (
    [fldServiceRatingID]          INT            IDENTITY (1, 1) NOT NULL,
    [fldServiceRating]            INT            NOT NULL,
    [fldServiceRatingDescription] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_tblServiceRating] PRIMARY KEY CLUSTERED ([fldServiceRatingID] ASC)
);


GO

