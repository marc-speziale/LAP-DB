CREATE TABLE [newlap].[creditors] (
    [id]           BIGINT         IDENTITY (41, 1) NOT NULL,
    [name]         NVARCHAR (191) NOT NULL,
    [street1]      NVARCHAR (191) NOT NULL,
    [street2]      NVARCHAR (191) NOT NULL,
    [city]         NVARCHAR (191) NOT NULL,
    [province]     NVARCHAR (191) NOT NULL,
    [postal_code]  NVARCHAR (191) NOT NULL,
    [phone_number] NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_creditors_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.creditors', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'creditors';


GO

