-- =============================================
-- Author:      Jerry Sweet
-- Create Date: <Create Date, Sept 17, 2024 >
-- Description: Calculates the expiry dates of contracts
-- =============================================
CREATE FUNCTION [dbo].[fncExpiryDate]
(
    -- Add the parameters for the function here
    @ContractID INT
)
RETURNS Date
AS
BEGIN
    -- Declare the return variable here
    DECLARE @ExpiryDate Date

    -- Add the T-SQL statements to compute the return value here
	SET @ExpiryDate = 
	(Select 
	CASE 
		WHEN t.fldtermProductId = 2 THEN --GAP
		c.fldContractEffectiveDate
			--DATEADD(MONTH,c.fldContractMonths,c.fldContractEffectiveDate)		
		WHEN t.fldtermKMCap = 1 THEN  -- Unlimited Time with Term KMs Cap at 40000kms(example) 
			DATEADD(DAY,
			((c.fldContractMileage)/(24000/365)),c.fldContractEffectiveDate) --is number of days until expiry

		WHEN c.fldContractMileage = 1000000 and t.fldTermKMCap IS NULL THEN --Regular TermMonths and Unlimited KMs, calc Months only
			DATEADD(MONTH,t.fldTermMonths,c.fldContractEffectiveDate)

		WHEN t.fldTermMonths = 1000000 THEN  --Unlimited TermMonths with Odometer Limit
			DATEADD(DAY,
			((CONVERT(INT,c.fldContractMileage) - CONVERT(INT,c.fldContractOdometer)) --Term Cap less original odometer reading = kms to expiry
			/(24000/365))  --24000kms per year / 365 = 65.75km driven per day gives us the number of days until expiry
			, CONVERT(DATE,c.fldContractEffectiveDate))	

		ELSE
			DATEADD(MONTH,t.fldTermMonths,c.fldContractEffectiveDate)
			
	End
	FROM tblcontract AS c
	JOIN tblTerm AS t ON t.fldTermId = c.fldContractTermDetailsID
	where fldcontractID = @ContractID)

    -- Return the result of the function
    RETURN @ExpiryDate
END

GO

