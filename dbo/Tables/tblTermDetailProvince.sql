CREATE TABLE [dbo].[tblTermDetailProvince] (
    [fldTermDetailProvinceID]           INT IDENTITY (1, 1) NOT NULL,
    [fldTermDetailProvinceTermDetailID] INT NULL,
    [fldTermDetailProvinceProvinceID]   INT NULL,
    CONSTRAINT [PK_tblTermDetailProvince] PRIMARY KEY CLUSTERED ([fldTermDetailProvinceID] ASC)
);


GO

