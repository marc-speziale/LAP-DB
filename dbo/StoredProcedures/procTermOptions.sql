CREATE PROCEDURE [dbo].[procTermOptions]
@TermID int
AS
Begin
SELECT *
--fldBenefitID AS BenefitID, fldBenefitName AS Benefit, fldTermBenefitCost AS COST, fldBenefitText, fldBenefitOrder
	from tblTermBenefit 
	join tblBenefit on tblBenefit.fldBenefitID = tblTermBenefit.fldTermBenefitBenefitID
	WHERE fldTermBenefitOption = 1 and  fldTermBenefitTermID = @TermID
	ORDER BY fldBenefitOrder
End;

GO

