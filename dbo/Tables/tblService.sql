CREATE TABLE [dbo].[tblService] (
    [fldServiceID]              INT             IDENTITY (1, 1) NOT NULL,
    [fldServiceName]            NVARCHAR (50)   NOT NULL,
    [fldServiceAddress1]        NVARCHAR (50)   NULL,
    [fldServiceAddress2]        NVARCHAR (50)   NULL,
    [fldServiceCity]            NVARCHAR (50)   NULL,
    [fldServiceProvince]        INT             NULL,
    [fldServicePostalCode]      NVARCHAR (50)   NULL,
    [fldServicePhone]           NVARCHAR (50)   NULL,
    [fldServiceFax]             NVARCHAR (50)   NULL,
    [fldServiceEmail]           NVARCHAR (50)   NULL,
    [fldServiceContactName]     NVARCHAR (50)   NULL,
    [fldServiceRating]          INT             CONSTRAINT [DF_tblService_fldServiceRating] DEFAULT ((1)) NULL,
    [fldServiceLabourRate]      DECIMAL (18, 2) NULL,
    [fldServiceTradeLabourRate] DECIMAL (18, 2) NULL,
    [fldServicePartsDiscount]   DECIMAL (18, 2) NULL,
    [fldServiceCountry]         INT             CONSTRAINT [DF_tblService_fldServiceCountry] DEFAULT ((1)) NOT NULL,
    [fldServiceDateAdded]       DATETIME        NOT NULL,
    [fldServiceGST]             NVARCHAR (50)   NULL,
    CONSTRAINT [PK_tblService] PRIMARY KEY CLUSTERED ([fldServiceID] ASC)
);


GO

