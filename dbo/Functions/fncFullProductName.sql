-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE FUNCTION [dbo].[fncFullProductName]

(
    -- Add the parameters for the function here
    @TermID INT
)
RETURNS varchar(100)
AS
BEGIN
    -- Declare the return variable here
    DECLARE @TermName varchar(100);

    -- Add the T-SQL statements to compute the return value here
     SET @TermName = (
	SELECT 
CASE 
WHEN dbo.tblTerm.fldTermProductID = 2 THEN dbo.tblTermName.fldTermName -- + ' ' + convert(nvarchar(10),dbo.tblTerm.fldTermMonths) + 'mth'
WHEN dbo.tblTerm.fldTermProductID IN (7,8,11,16,17,18,19,20) THEN dbo.tblTermName.fldTermName + ' ' + convert(nvarchar(10),dbo.tblTerm.fldTermMonths) + 'mth'

------------
/*WHEN dbo.tblTerm.fldTermTermNameID IN (7,8) THEN dbo.tblTermName.fldTermName
WHEN dbo.tblTerm.fldTermTermNameID IN (7,8,15,16,17,18) THEN
dbo.tblTermName.fldTermName + ' ' + convert(nvarchar(10),dbo.tblTerm.fldTermMonths) + 'mth'
*/
ELSE
	concat(
	fldTermName, ' ',
	CASE
	WHEN fldTermMonths > 9000 THEN 'Unlimited Time/'
	ELSE (convert(nvarchar(10),fldTermMonths)) + 'mth/'
	END,
	CASE
	WHEN fldTermKMs > 900000 THEN 'Unlimited KMs '
	ELSE (convert(nvarchar(10),fldTermKMs)) + 'KMs '
	END,
	CASE
	WHEN fldTermtermNameId = 33 THEN ' '
	ELSE '$' + (convert(nvarchar(10),fldTermClaimMax)) + 'Claim Max' END
	) 
END
from tblTerm 
inner join tblTermName on tblTermName.fldTermNameID = tblTerm.fldTermTermNameID
where fldTermID = @TermID)

    -- Return the result of the function
    RETURN @TermName
END

GO

