CREATE TABLE [dbo].[ButlerContractCost] (
    [fldContractCostID]             INT           NOT NULL,
    [fldContractCostCost]           INT           NOT NULL,
    [fldContractCostTypeID]         TINYINT       NOT NULL,
    [fldContractCostBenefitID]      NVARCHAR (50) NOT NULL,
    [fldContractCostActive]         TINYINT       NOT NULL,
    [fldContractCostContractID]     INT           NOT NULL,
    [fldContractCostPaid]           TINYINT       NOT NULL,
    [fldContractCostCommissionPaid] TINYINT       NOT NULL,
    [fldContractCostPST]            TINYINT       NOT NULL,
    [fldContractCostHST]            TINYINT       NOT NULL,
    [fldContractCommissionPercent]  TINYINT       NOT NULL
);


GO

