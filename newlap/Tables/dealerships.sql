CREATE TABLE [newlap].[dealerships] (
    [id]                                  BIGINT         IDENTITY (772, 1) NOT NULL,
    [license_number]                      NVARCHAR (191) DEFAULT (NULL) NULL,
    [name]                                NVARCHAR (191) NOT NULL,
    [street1]                             NVARCHAR (191) NOT NULL,
    [street2]                             NVARCHAR (191) DEFAULT (NULL) NULL,
    [city]                                NVARCHAR (191) NOT NULL,
    [province]                            NVARCHAR (191) NOT NULL,
    [postal_code]                         NVARCHAR (20)  DEFAULT (NULL) NULL,
    [notes]                               NVARCHAR (MAX) NULL,
    [status]                              NVARCHAR (8)   NOT NULL,
    [controller_email]                    NVARCHAR (191) DEFAULT (NULL) NULL,
    [warranty_customer]                   SMALLINT       DEFAULT ((0)) NOT NULL,
    [gap_customer]                        SMALLINT       DEFAULT ((0)) NOT NULL,
    [theft_customer]                      SMALLINT       DEFAULT ((0)) NULL,
    [motorcycle_customer]                 SMALLINT       DEFAULT ((0)) NULL,
    [adloe_customer]                      SMALLINT       DEFAULT ((0)) NULL,
    [pp_customer]                         SMALLINT       DEFAULT ((0)) NOT NULL,
    [theft_roadside_customer]             SMALLINT       DEFAULT ((0)) NOT NULL,
    [tire_rim_theft_customer]             SMALLINT       DEFAULT ((0)) NOT NULL,
    [roadside_assistance_towing_customer] SMALLINT       DEFAULT ((0)) NOT NULL,
    [powersports_customer]                SMALLINT       DEFAULT ((0)) NULL,
    [contact_name]                        NVARCHAR (191) DEFAULT (NULL) NULL,
    [contact_email]                       NVARCHAR (191) DEFAULT (NULL) NULL,
    [contact_phone_number]                NVARCHAR (191) DEFAULT (NULL) NULL,
    [gap_max_markup]                      BIGINT         DEFAULT (NULL) NULL,
    [invoice_type]                        NVARCHAR (191) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_dealerships_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [dealerships$dealerships_name_unique] UNIQUE NONCLUSTERED ([name] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealerships', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealerships';


GO

