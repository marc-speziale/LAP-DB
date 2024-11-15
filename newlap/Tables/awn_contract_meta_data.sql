CREATE TABLE [newlap].[awn_contract_meta_data] (
    [id]                   BIGINT         IDENTITY (73, 1) NOT NULL,
    [contract_id]          NVARCHAR (191) NOT NULL,
    [contract_type]        NVARCHAR (191) NOT NULL,
    [customer_prices]      NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [submit_response_data] NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [pdf_file]             NVARCHAR (191) DEFAULT (NULL) NULL,
    [created_at]           DATETIME       DEFAULT (NULL) NULL,
    [updated_at]           DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_awn_contract_meta_data_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.awn_contract_meta_data', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'awn_contract_meta_data';


GO

