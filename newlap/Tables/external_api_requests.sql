CREATE TABLE [newlap].[external_api_requests] (
    [id]               BIGINT         IDENTITY (1, 1) NOT NULL,
    [time]             DATETIME       DEFAULT (getdate()) NOT NULL,
    [ip_address]       NVARCHAR (191) NOT NULL,
    [url]              NVARCHAR (191) NOT NULL,
    [request_headers]  NVARCHAR (MAX) NOT NULL,
    [request_payload]  NVARCHAR (MAX) NOT NULL,
    [response_code]    INT            NOT NULL,
    [response_payload] NVARCHAR (MAX) NOT NULL,
    [response_headers] NVARCHAR (MAX) NOT NULL,
    [created_at]       DATETIME       DEFAULT (NULL) NULL,
    [updated_at]       DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_external_api_requests_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [external_api_requests_time_index]
    ON [newlap].[external_api_requests]([time] ASC);


GO

CREATE NONCLUSTERED INDEX [external_api_requests_url_index]
    ON [newlap].[external_api_requests]([url] ASC);


GO

CREATE NONCLUSTERED INDEX [external_api_requests_ip_address_index]
    ON [newlap].[external_api_requests]([ip_address] ASC);


GO

CREATE NONCLUSTERED INDEX [external_api_requests_response_code_index]
    ON [newlap].[external_api_requests]([response_code] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.external_api_requests', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'external_api_requests';


GO

