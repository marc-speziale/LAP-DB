-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE FUNCTION [dbo].[fncClass]
(
    -- Add the parameters for the function here
    @ProductID int,
	@VehicleAgeID int,
	@Make nvarchar(100),
	@Model nvarchar(100),
	@Trim nvarchar(100),
	@DealerID int
)
RETURNS int
AS
BEGIN
    -- Declare the return variable here
    DECLARE @ReturnClass int;

    -- Add the T-SQL statements to compute the return value here
    Select @ReturnClass = (
		select * from fncClasstbl(@ProductID,@VehicleAgeID,@Make, @Model, @Trim, @DealerID)
	)

    -- Return the result of the function
    RETURN @ReturnClass
END

GO

