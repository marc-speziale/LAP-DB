-- =============================================
-- Author:      Jerry
-- Create Date: April 27, 2024
-- Description: Returns full product name from TermID
-- =============================================
CREATE PROCEDURE [dbo].[TermName]
(
    -- Add the parameters for the stored procedure here
    @TermID INT
    
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
SELECT concat(
fldTermName, ' ',
CASE
WHEN fldTermMonths > 9000 THEN 'Unlimited Time/'
ELSE (convert(nvarchar(10),fldTermMonths)) + 'mth/'
END,
CASE
WHEN fldTermKMs > 9000 THEN 'Unlimited KMs '
ELSE (convert(nvarchar(10),fldTermKMs)) + 'KMs'
END,
fldTermClaimMax, ' Claim Max'
) AS WarrantyTerm 
from tblTerm 
inner join tblTermName on tblTermName.fldTermNameID = tblTerm.fldTermTermNameID
where fldTermID = @TermID
END

GO

