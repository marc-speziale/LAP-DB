-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[procTermFilter]
(
    -- Add the parameters for the stored procedure here
    @DealerId int,
    @ProductID int,
	@Make nvarchar(50),
	@Model nvarchar(50),
	@Year int,
	@KM int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
--    SELECT 
--	fldTermID AS Id, dbo.fncFullProductName(fldTermID) AS TermName
	

--FROM tblTerm
--left join dbo.tblTemplateDealerships ON tblTerm.fldTermTemplateID = dbo.tblTemplateDealerships.fldTemplateDealershipsDealerID
--JOIN dbo.tblTemplate ON dbo.tblTemplate.fldTemplateOldID = dbo.tblTemplateDealerships.fldTemplateDealershipsTemplateOldID
--WHERE
----dbo.tblTerm.fldTermProductID = @ProductID
----AND 
--dbo.tblTemplateDealerships.fldTemplateDealershipsDealerID = @DealerID
--AND dbo.tblTemplate.fldTemplateActive = 1
--AND @KM between fldTermKMRestrictionMin and (fldTermKMRestrictionMax + fldTermKMOverage)
--AND (Year(GETDATE()) - @Year) BETWEEN fldTermAgeRestrictionMin and fldTermAgeRestrictionMax
--GROUP BY fldTermID
--ORDER BY TermName

    SELECT TOP 10
	fldTermID AS Id, dbo.fncFullProductName(fldTermID) AS TermName
	

FROM tblTerm
left join dbo.tblTemplateDealerships ON tblTerm.fldTermTemplateID = dbo.tblTemplateDealerships.fldTemplateDealershipsDealerID
JOIN dbo.tblTemplate ON dbo.tblTemplate.fldTemplateOldID = dbo.tblTemplateDealerships.fldTemplateDealershipsTemplateOldID
WHERE dbo.tblTerm.fldTermProductID = 2
--dbo.tblTerm.fldTermProductID = @ProductID
--AND 
--dbo.tblTemplateDealerships.fldTemplateDealershipsDealerID = @DealerID
--AND dbo.tblTemplate.fldTemplateActive = 1
--AND @KM between fldTermKMRestrictionMin and (fldTermKMRestrictionMax + fldTermKMOverage)
--AND (Year(GETDATE()) - @Year) BETWEEN fldTermAgeRestrictionMin and fldTermAgeRestrictionMax
GROUP BY fldTermID
ORDER BY TermName
END

GO

