CREATE TABLE [newlap].[void_contracts] (
    [id]            BIGINT         IDENTITY (2816, 1) NOT NULL,
    [contract_id]   BIGINT         NOT NULL,
    [contract_type] NVARCHAR (191) NOT NULL,
    [reason]        NVARCHAR (191) NOT NULL,
    [meta]          NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_void_contracts_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.void_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'void_contracts';


GO

