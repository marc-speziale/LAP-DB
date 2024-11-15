CREATE FUNCTION newlap.enum2str$roadside_assistance_and_towing_contracts$vehicle_usage 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'personal'
            WHEN 2 THEN 'commercial'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.roadside_assistance_and_towing_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$roadside_assistance_and_towing_contracts$vehicle_usage';


GO

