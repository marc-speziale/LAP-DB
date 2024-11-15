CREATE TABLE [newlap].[mailing_addresses] (
    [id]            BIGINT         IDENTITY (7, 1) NOT NULL,
    [dealership_id] BIGINT         NOT NULL,
    [street1]       NVARCHAR (191) NOT NULL,
    [street2]       NVARCHAR (191) DEFAULT (NULL) NULL,
    [city]          NVARCHAR (191) NOT NULL,
    [province]      NVARCHAR (191) NOT NULL,
    [postal_code]   NVARCHAR (20)  DEFAULT (NULL) NULL,
    CONSTRAINT [PK_mailing_addresses_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [mailing_addresses$mailing_addresses_dealership_id_foreign] FOREIGN KEY ([dealership_id]) REFERENCES [newlap].[dealerships] ([id])
);


GO

CREATE NONCLUSTERED INDEX [mailing_addresses_dealership_id_foreign]
    ON [newlap].[mailing_addresses]([dealership_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.mailing_addresses', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'mailing_addresses';


GO

