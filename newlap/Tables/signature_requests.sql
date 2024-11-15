CREATE TABLE [newlap].[signature_requests] (
    [id]            BIGINT         IDENTITY (18, 1) NOT NULL,
    [contract_id]   BIGINT         NOT NULL,
    [contract_type] NVARCHAR (191) NOT NULL,
    [email]         NVARCHAR (191) NOT NULL,
    [token]         NVARCHAR (191) NOT NULL,
    [token2]        NVARCHAR (191) NOT NULL,
    [requested_by]  BIGINT         DEFAULT (NULL) NULL,
    [email_sent_at] DATETIME       DEFAULT (NULL) NULL,
    [signed_at]     DATETIME       DEFAULT (NULL) NULL,
    [accessed_at]   DATETIME       DEFAULT (NULL) NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_signature_requests_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.signature_requests', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'signature_requests';


GO

