CREATE FUNCTION newlap.str2enum$roadside_assistance_and_towing_contracts$status 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'active' THEN 1
            WHEN 'cancelled' THEN 2
            WHEN 'pending' THEN 3
            WHEN 'void' THEN 4
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.roadside_assistance_and_towing_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$roadside_assistance_and_towing_contracts$status';


GO

