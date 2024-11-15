-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[procActiveProductList]
(
    -- Add the parameters for the stored procedure here
    @DealerID int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    SELECT *
	
	--fldProductID AS ProductID, fldProductName AS Product 
	
	from tblProduct where fldProductActive = 1
END

GO

