CREATE TABLE [postgres].[repair_centers] (
    [id]                        INT             NOT NULL,
    [name]                      TEXT            NOT NULL,
    [location]                  NVARCHAR (255)  NULL,
    [email]                     VARCHAR (64)    NULL,
    [phone]                     VARCHAR (16)    NULL,
    [contact_person_first_name] VARCHAR (32)    NULL,
    [contact_person_last_name]  VARCHAR (32)    NULL,
    [price_per_hour]            NUMERIC (13, 2) NULL,
    [created_at]                DATETIME        NULL,
    [updated_at]                DATETIME        NULL,
    [contact_person_phone]      VARCHAR (16)    NULL,
    [contact_person_phone_ext]  VARCHAR (16)    NULL,
    [fax_number]                VARCHAR (16)    NULL
);


GO

