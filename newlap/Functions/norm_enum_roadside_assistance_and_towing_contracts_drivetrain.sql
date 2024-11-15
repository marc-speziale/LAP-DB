CREATE FUNCTION newlap.norm_enum$roadside_assistance_and_towing_contracts$drivetrain 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$roadside_assistance_and_towing_contracts$drivetrain(newlap.str2enum$roadside_assistance_and_towing_contracts$drivetrain(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.roadside_assistance_and_towing_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$roadside_assistance_and_towing_contracts$drivetrain';


GO

