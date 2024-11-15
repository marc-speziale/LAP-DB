CREATE TABLE [postgres].[vehicles] (
    [id]          INT            NOT NULL,
    [type]        VARCHAR (255)  NULL,
    [vin]         VARCHAR (18)   NULL,
    [odometer]    BIGINT         NOT NULL,
    [brand]       VARCHAR (255)  NULL,
    [model]       VARCHAR (255)  NULL,
    [series]      VARCHAR (255)  NULL,
    [year]        BIGINT         NOT NULL,
    [specifics]   NVARCHAR (255) NULL,
    [additional]  NVARCHAR (255) NULL,
    [created_at]  DATETIME       NULL,
    [updated_at]  DATETIME       NULL,
    [is_used]     BIT            NULL,
    [lien_holder] TEXT           NULL
);


GO

