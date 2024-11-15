-- =============================================
-- Author:      Jerry Sweet
-- Create Date: May 5, 2024
-- Make Spell Check
-- =============================================
CREATE FUNCTION [dbo].[fncMakeCheck]
(
    -- Add the parameters for the function here
    @ProductID int,
	@Make nvarchar(100)
)
RETURNS nvarchar(50)
AS
BEGIN
    -- Declare the return variable here
	DECLARE @ReturnMake nvarchar(50);
    

    -- Add the T-SQL statements to compute the return value here
	SELECT @ReturnMake = ISNULL(
	(SELECT tblManufacturer.fldManufacturerName
	FroM tblManufacturer
	Where @Make LIKE '%' + tblManufacturer.fldManufacturerNamePattern + '%'
	AND tblManufacturer.fldManufacturerProductID = @ProductID),'No Manufacturer in System')

    -- Return the result of the function
    RETURN @ReturnMake
END

GO

