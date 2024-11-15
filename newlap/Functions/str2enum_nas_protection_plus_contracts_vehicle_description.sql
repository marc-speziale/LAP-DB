CREATE FUNCTION newlap.str2enum$nas_protection_plus_contracts$vehicle_description 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'new' THEN 1
            WHEN 'used' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_protection_plus_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$nas_protection_plus_contracts$vehicle_description';


GO

