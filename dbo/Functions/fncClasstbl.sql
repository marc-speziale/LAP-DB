-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fncClasstbl]
(	
	-- Add the parameters for the function here
	@ProductID int,
	@VehicleAgeID int,
	@Make nvarchar(100),
	@Model nvarchar(100),
	@Trim nvarchar(255),
	@DealerID int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	Select 
		CASE 
		WHEN @productID = 2 THEN 1
		WHEN @PRoductID = 6 THEN
			(SELECT COALESCE(tblDealerClassOverride.fldDealerClassOverrideClass,tblTrim.fldTrimClass,tblModel.fldModelClass, dbo.tblClass.fldClass) AS Class 
			FROM tblManufacturer
			JOIN dbo.tblClass ON dbo.tblClass.fldClassID = dbo.tblManufacturer.fldManufacturerClassID
			LEFT JOIN tblModel ON tblModel.fldModelManufacturerID = tblManufacturer.fldManufacturerID AND @Model LIKE tblModel.fldModelModel
			LEFT JOIN tblTrim ON (tblTrim.fldTrimManufacturerID = tblManufacturer.fldManufacturerID OR tblTrim.fldTrimManufacturerID IS NULL) AND (tblTrim.fldModelID = tblModel.fldModelID OR tblTrim.fldModelID IS NULL) AND @Trim LIKE tblTrim.fldTrimTrim
			LEFT JOIN tblDealerClassOverride ON (tblDealerClassOverride.fldDealerClassOverrideManufacturerID = tblManufacturer.fldManufacturerID OR tblDealerClassOverride.fldDealerClassOverrideManufacturerID IS NULL) AND (tblDealerClassOverride.fldDealerClassOverrideModelID = tblModel.fldModelID OR tblDealerClassOverride.fldDealerClassOverrideModelID IS NULL) AND (tblDealerClassOverride.fldDealerClassOverrideTrimID = tblTrim.fldTrimID OR tblDealerClassOverride.fldDealerClassOverrideTrimID IS NULL) AND tblDealerClassOverride.fldDealerClassOverrideDealerID = @DealerID
			WHERE dbo.tblManufacturer.fldManufacturerName = dbo.fncMakeCheck(@ProductID, @Make)
			AND dbo.tblManufacturer.fldManufacturerProductID = @ProductID)
		WHEN @PRoductID = 8 THEN
			(SELECT COALESCE(tblDealerClassOverride.fldDealerClassOverrideClass,tblTrim.fldTrimClass,tblModel.fldModelClass, dbo.tblClass.fldClass) AS Class 
			FROM tblManufacturer
			JOIN dbo.tblClass ON dbo.tblClass.fldClassID = dbo.tblManufacturer.fldManufacturerClassID
			LEFT JOIN tblModel ON tblModel.fldModelManufacturerID = tblManufacturer.fldManufacturerID AND @Model LIKE tblModel.fldModelModel
			LEFT JOIN tblTrim ON tblTrim.fldTrimManufacturerID = tblManufacturer.fldManufacturerID AND tblTrim.fldModelID = tblModel.fldModelID AND @Trim LIKE tblTrim.fldTrimTrim
			LEFT JOIN tblDealerClassOverride ON (tblDealerClassOverride.fldDealerClassOverrideManufacturerID = tblManufacturer.fldManufacturerID OR tblDealerClassOverride.fldDealerClassOverrideManufacturerID IS NULL) AND (tblDealerClassOverride.fldDealerClassOverrideModelID = tblModel.fldModelID OR tblDealerClassOverride.fldDealerClassOverrideModelID IS NULL) AND (tblDealerClassOverride.fldDealerClassOverrideTrimID = tblTrim.fldTrimID OR tblDealerClassOverride.fldDealerClassOverrideTrimID IS NULL) AND tblDealerClassOverride.fldDealerClassOverrideDealerID = @DealerID
			WHERE dbo.tblManufacturer.fldManufacturerName = dbo.fncMakeCheck(@ProductID, @Make)
			AND dbo.tblManufacturer.fldManufacturerProductID = @ProductID)
		WHEN @PRoductID = 11 THEN
			(SELECT dbo.tblClass.fldClass AS Class 
			FROM tblManufacturer
			JOIN dbo.tblClass ON dbo.tblClass.fldClassID = dbo.tblManufacturer.fldManufacturerClassID
			WHERE dbo.tblManufacturer.fldManufacturerName = dbo.fncMakeCheck(@ProductID, @Make)
			AND dbo.tblManufacturer.fldManufacturerProductID = @ProductID)
		WHEN @ProductID = 19 THEN
			CASE 
			WHEN @VehicleAgeID = 2 THEN
			3
			ELSE 1
			END
		WHEN @ProductID = 16 THEN
			ISNULL((SELECT dbo.tblClass.fldClass AS Class 
			FROM tblManufacturer
			JOIN dbo.tblClass ON dbo.tblClass.fldClassID = dbo.tblManufacturer.fldManufacturerClassID
			WHERE dbo.tblManufacturer.fldManufacturerName = dbo.fncMakeCheck(@ProductID, @Make)
			AND dbo.tblManufacturer.fldManufacturerProductID = @ProductID),1)
		ELSE 1
		END AS vehicleClass
)

GO

