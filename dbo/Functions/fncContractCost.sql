-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE FUNCTION dbo.fncContractCost
(
    -- Add the parameters for the function here
    @ContractID Decimal
)
RETURNS Decimal
AS
BEGIN
    -- Declare the return variable here
    DECLARE @ContractCost decimal

    -- Add the T-SQL statements to compute the return value here
	SET @ContractCost = (
    SELECT SUM(fldContractCostCost) from tblContractCost where fldContractCostContractID = @ContractID

	)

    -- Return the result of the function
    RETURN @ContractCost
END

GO

